package com.bit.kiosk.webchat;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.EndpointConfig;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.HandshakeRequest;
import javax.websocket.server.ServerEndpoint;

import com.bit.kiosk.controller.KioMenuController;
import com.bit.kiosk.dto.CartDto;


@ServerEndpoint(value="/webChatServer",configurator=WebSocketSessionConfigurator.class)
public class WebChatServer extends HttpServlet {
	private static Map<Session,ChatClient> users = Collections.synchronizedMap(new HashMap<Session, ChatClient>());
	
	@OnMessage
	public void onMsg(String message, Session session) throws IOException{
		String userName = users.get(session).getName();
		System.out.println(userName + " : " + message);
		synchronized (users) {
			Iterator<Session> it = users.keySet().iterator();
			while(it.hasNext()){
				Session currentSession = it.next();
				if(!currentSession.equals(session)){
					currentSession.getBasicRemote().sendText(userName + " : " + message);
				}
			}
		}
	}
	
	@OnOpen
	public void onOpen(Session session,EndpointConfig config){
		System.out.println("onOpen..........................");
		String userName = "user";
		int rand_num = (int)(Math.random()*1000);
		HttpSession httpSession = (HttpSession) config.getUserProperties().get("PRIVATE_HTTP_SESSION");
		ChatClient client = new ChatClient();
		//System.out.println(session);
		client.setName(userName+rand_num);
		
		//System.out.println(session + " connect");
		
		users.put(session, client);
		/* sendNotice(client.getName() + "님이 입장하셨습니다. 현재 사용자 " + users.size() + "명"); */
		//System.out.println(httpSession.getAttribute("cartItems")==null?"":httpSession.getAttribute("cartItems").toString());
		
		ArrayList<CartDto> cartItems = new ArrayList<CartDto>();
		if(httpSession.getAttribute("cartItems")!=null) {
			for(CartDto dto : KioMenuController.cartItems) {
				cartItems.add(dto);
			}
			
			if(cartItems.size()>0) {
				sendNotice(cartItems.toString());
				KioMenuController.cartList.add(cartItems);
				KioMenuController.cartItems.clear();
			}
		}
	}
	
	
	public void sendNotice(String message){
		String userName = "server";
		System.out.println(userName + " : " + message);
		synchronized (users) {
			Iterator<Session> it = users.keySet().iterator();
			while(it.hasNext()){
				Session currentSession = it.next();
				try {
					currentSession.getBasicRemote().sendText(" : " + message);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	
	 @OnClose public void onClose(Session session) { String userName =
	 users.get(session).getName(); users.remove(session); 
			/* sendNotice(userName +"님이 퇴장하셨습니다. 현재 사용자 " + users.size() + "명"); */
	 }
	 

}