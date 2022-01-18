<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>home</title>
    <style>
           ul,
        li {
            list-style: none;
            padding:0px;
            height: 100%;
            background-size: 100% 100%;
        }

        .slide {
            height: 75%;
            overflow: hidden;
        }

        .slide ul {
            width: calc(100% * 4);
            display: flex;
            animation: slide 20s infinite;  /* slide를 20초동안 진행 무한반복 */
        }
        .slide li {
            width: calc(100% / 4);
            height: 100%;
        }

        .slide li:nth-child(1) {
            background-image: url('./resources/images/Starbucks1.jpg');
        }

        .slide li:nth-child(2) {
            background-image: url('./resources/images/Starbucks2.jpg');
        }

        .slide li:nth-child(3) {
            background-image: url('./resources/images/Starbucks3.jpg');
        }

        .slide li:nth-child(4) {
            background-image: url('./resources/images/Starbucks4.jpg');
        }

        @keyframes slide {
            0% {
                margin-left: 0;
            }

            /* 0 ~ 10  : 정지 */
            10% {
                margin-left: 0;
            }

            /* 10 ~ 25 : 변이 */
            25% {
                margin-left: -100%;
            }

            /* 25 ~ 35 : 정지 */
            35% {
                margin-left: -100%;
            }

            /* 35 ~ 50 : 변이 */
            50% {
                margin-left: -200%;
            }

            60% {
                margin-left: -200%;
            }

            75% {
                margin-left: -300%;
            }

            85% {
                margin-left: -300%;
            }

            100% {
                margin-left: 0;
            }
        }
    </style>
</head>

<body style="width: 1000px; height: 2000px;">
    <div style="width:auto; height:100%; cursor: pointer; position: absolute; left: 50%; margin-left: -500px;" onclick="location.href='Main';">
        <div class="slide">
            <ul>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
        <img alt="" src=".resources/images/Starbucks2_1.jpg" style="width: 1000px; height: 25%;">

    </div>
</body>

</html>