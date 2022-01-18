package com.bit.kiosk.webchat;
 
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServletRequest;
 
/**
 * Servlet Request Listener
 */
@WebListener
public class RequestListener implements ServletRequestListener
{
 
   @Override
   public void requestDestroyed(ServletRequestEvent sre) 
   {
   }
 
   /**
    * WebSocketSessionConfigurator에서 HttpSession이 null 취득되어 오버라이드함.
    */
   @Override
   public void requestInitialized(ServletRequestEvent sre) 
   {
      ((HttpServletRequest) sre.getServletRequest()).getSession();
   }
   
}
