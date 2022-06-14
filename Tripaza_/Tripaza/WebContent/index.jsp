<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tripaza</title>
<style>
@font-face {
    font-family: 'Happiness-Sans-Title';
    src: url("../css/fonts/screen/ttf/Happiness-Sans-Title.ttf");
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: 'Happiness-Sans-Regular';
    src: url("../css/fonts/screen/ttf/Happiness-Sans-Regular.ttf");
}

@font-face {
    font-family: '웰컴체 Bold';
    src: url("../css/welcome_font/웰컴체\ Bold.ttf");
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: '웰컴체 Regular';
    src: url("../css/welcome_font/웰컴체\ Regular.ttf");
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: 'DMSerifDisplay-Regular';
    src: url("../css/DM_Serif_Display/DMSerifDisplay-Regular.ttf");
}
 
 * {
    box-sizing: border-box;
    padding: 0;
    margin: 0 auto;
    scroll-behavior: smooth;
 }

li {
    list-style: none;
}

a {
    text-decoration: none;
    color: black;
}

body{
    /*background: -webkit-radial-gradient(60% 60%, circle, yellow, #fff);*/
    -ms-overflow-style: none;
    }
    
   ::-webkit-scrollbar {
     display: none;
   }

/* header 부분 시작 */
.title {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 1.5%;
    position: absolute;
    width: 100%;
    height: 100px;
    z-index: 10;
    box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.185);

}

.title a {
    font-weight: bold;
    position: absolute;
    left: 13%;
}

/* 슬라이드 바 시작*/
.sidebar input + label {
    margin-left: 85px;

}

input[id="menuicon"] {
    display: none;
    align-items: center;
}

input[id="menuicon"]+label {
    display: block;
    width: 35px;
    height: 25px;
    position: absolute;
    cursor: pointer;
    left: 10%;
}

input[id="menuicon"]+label span {
    display: block;
    position: absolute;
    width: 100%;
    height: 5px;
    background-color: #000;
    transition: all .35s;

}

input[id="menuicon"]+label span:nth-child(1) {
    top: 0;

}

input[id="menuicon"]+label span:nth-child(2) {
    top: 50%;
    transform: translateY(-50%);
    

}

input[id="menuicon"]+label span:nth-child(3) {
    bottom: 0;
    
}

input[id="menuicon"]:checked+label span:nth-child(1) {
    top: 50%;
    transform: translateY(-50%) rotate(45deg);
   
    
}

input[id="menuicon"]:checked+label span:nth-child(2) {
    opacity: 0;
    
}


input[id="menuicon"]:checked+label span:nth-child(3) {
    bottom: 50%;
    transform: translateY(50%) rotate(-45deg);


}

input[id="menuicon"] {
    display: none;
}

input[id="menuicon"]:checked+label {
    z-index: 2;

}

input[id="menuicon"]:checked+label span {
    background: rgb(0, 0, 0);

}

input[id="menuicon"]:checked ~ .title > .title-logo > h1 {
    z-index: 10;
}
.sidebar h2 {
    text-align: center;
    margin-top: 50px;
}

div[class="sidebar"] {
    width: 370px;
    height: 100%;
    background: rgb(0, 0, 0);
    position: fixed;
    top: 100px;
    left: -370px;
    z-index: 1000000;
    transition: all .35s;

}

input[id="menuicon"]:checked+label+div {
    left: 0;
}

.sidebar-item{
    margin-left: 5%;
}

.sidebar-item li a{
    text-decoration: none;
    color: white;
    font-family: 'Happiness-Sans-Title';
    line-height: 40px;
    padding: 0px 10px;
    position: relative;
}
.sidebar-item li a:after{
    content: "";
    position: absolute;
    background-color: white;
    height: 3px;
    width: 0;
    left: 0;
    bottom: -10px;
    transition: .3s;

}
.sidebar-item li a:hover:after{
    width: 100%;
   
}


.sidebar-item li a:hover{
    color: gray;

}

/* 슬라이드 바 끝 */

.title-logo {
    display: flex;
    align-items: center;
    gap: 15px;

}

.title-logo:hover {
    cursor: pointer;

}
.title > .title-logo > .sidebar > h2 {
    color: white;
}
.title-login {
    display: flex;
    font-weight: bolder;
    font-size: 1.2rem;

}
.title-login a {
    transition: all .3s ease;
    padding: 0px 10px;
    border-radius: 10px;
    position: relative;
}
.title-login li a:after{
    content: "";
    position: absolute;
    background-color: #0151E5;
    height: 3px;
    width: 0;
    left: 0;
    bottom: -10px;
    transition: .3s;

}
.title-login li a:hover:after{
    width: 100%;
   
}

.title-login li {
    margin-left: 20px;
}


.title-login-sub {
    display: flex;
    align-items: center;
    gap: 15px;

}

.title-login-sub:hover {
    cursor: pointer;

}
.title-login-sub {
    display: flex;
    font-weight: bolder;
    font-size: 1.2rem;

}
.title-login-sub a {
    transition: all .3s ease;
    padding: 0px 10px;
    border-radius: 10px;
    position: relative;
}
.title-login-sub li a:after{
    content: "";
    position: absolute;
    background-color: #ffffff;
    height: 3px;
    width: 0;
    left: 0;
    bottom: -10px;
    transition: .3s;

}
.title-login-sub li a:hover:after{
    width: 100%;
   
}

.title-login-sub li {
    margin-left: 20px;
}
/* header 부분 끝 */
@keyframes font-slider {
    from {
        left: -280px;
        opacity: 0;
    }
    to {
        left: 8%;
        opacity: 1;
    }
    
}
@keyframes font-disapper {
    from {
        left: 8%;
        opacity: 1;
    }
    to {
        left: -280px;
        opacity: 0;
    }
}

#visual-container {
    height: 1000px;
    position: relative;
    background-image: url(../images/비행기.png);
    background-repeat: no-repeat;
    background-position: right;
    background-size: 1100px;
}

.visual-font {
    position: absolute;
    font-size: 5rem;
    top: 280px;
    left: 8%;
    color: black;
    font-family: 'DMSerifDisplay-Regular';
    animation: font-slider 1s;
}

.visual-font .map-button {
    font-family: 'Happiness-Sans-Title';
}


/* 버튼 디자인 시작 */
.map-button{
    color: rgba(0, 0, 0, 0.374);
    background-color: rgba(0, 0, 0, 0);
    font-size: 2.7rem;
    font-weight: bolder;
    transition:all .5s ease-in;
    position: absolute;
    width: 260px;
    margin-top: 50px;
    padding: 10px;
    text-align: center;

}
.map-button:hover {
    color: black;
    
    
}
.map-button span {
    display: block;
    position: absolute;
    background-color: #0151E5;
}
.map-button span:nth-child(1) {
    left: 0;
    bottom: 0;
    width: 1px;
    height: 100%;
    transform: scaleY(0);
    transform-origin: top;
    transition: transform .3s;
    

}
.map-button:hover span:nth-child(1) {
    transform: scaleY(1);
    transform-origin: bottom;
    transition: transform .3s;
}


.map-button span:nth-child(2) {
    left: 0;
    bottom: 0;
    width: 100%;
    height: 1px;
    transform: scaleX(0);
    transform-origin: right;
    transition: transform .3s;

}
.map-button:hover span:nth-child(2) {
    transform: scaleX(1);
    transform-origin: left;
    transition: transform .3s;
}


.map-button span:nth-child(3) {
    right: 0;
    bottom: 0;
    width: 1px;
    height: 100%;
    transform: scaleY(0);
    transform-origin: top;
    transition: transform .3s;
    transition-delay: .3s;


}
.map-button:hover span:nth-child(3) {
    transform: scaleY(1);
    transform-origin: bottom;
    transition: transform .3s;
    transition-delay: .3s;

}


.map-button span:nth-child(4) {
    left: 0;
    top: 0;
    width: 100%;
    height: 1px;
    transform: scaleX(0);
    transform-origin: right;
    transition: transform .3s;
    transition-delay: .3s;

}
.map-button:hover span:nth-child(4) {
    transform: scaleX(1);
    transform-origin: left;
    transition: transform .3s;
    transition-delay: .3s;

}
.more{
    color: rgba(0, 0, 0, 0.374);
    background-color: rgba(0, 0, 0, 0);
    font-size: 2.7rem;
    font-weight: bolder;
    transition:all .5s ease-in;
    position: absolute;
    right: 0;
    margin-right: 80px;
    transform: translate(-50%);
    margin-top: 50px;
    padding: 10px;

}
.more:hover {
    color: black;
    
    
}
.more span {
    display: block;
    position: absolute;
    background-color: #0151E5;
}
.more span:nth-child(1) {
    left: 0;
    bottom: 0;
    width: 1px;
    height: 100%;
    transform: scaleY(0);
    transform-origin: top;
    transition: transform .3s;
    

}
.more:hover span:nth-child(1) {
    transform: scaleY(1);
    transform-origin: bottom;
    transition: transform .3s;
}


.more span:nth-child(2) {
    left: 0;
    bottom: 0;
    width: 100%;
    height: 1px;
    transform: scaleX(0);
    transform-origin: right;
    transition: transform .3s;

}
.more:hover span:nth-child(2) {
    transform: scaleX(1);
    transform-origin: left;
    transition: transform .3s;
}


.more span:nth-child(3) {
    right: 0;
    bottom: 0;
    width: 1px;
    height: 100%;
    transform: scaleY(0);
    transform-origin: top;
    transition: transform .3s;
    transition-delay: .3s;


}
.more:hover span:nth-child(3) {
    transform: scaleY(1);
    transform-origin: bottom;
    transition: transform .3s;
    transition-delay: .3s;

}


.more span:nth-child(4) {
    left: 0;
    top: 0;
    width: 100%;
    height: 1px;
    transform: scaleX(0);
    transform-origin: right;
    transition: transform .3s;
    transition-delay: .3s;

}
.more:hover span:nth-child(4) {
    transform: scaleX(1);
    transform-origin: left;
    transition: transform .3s;
    transition-delay: .3s;

}

/* 버튼 디자인 끝 */

/* information section*/

/* information-animatinon i 부분 코드 시작 */
@keyframes information-animation {
    0% {
        transform: translate(0%);
    }
    100% {
        transform: translate(50%, -50%);
    }
    
}
/* information-animatinon i 부분 코드 끝 */

.information-container {
    font-family: 'Happiness-Sans-Title';
    width: 1300px;
    height: 900px;

}

.information-container h2{
    font-size: 45px;

}



.information-box {
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.information-title {
    text-align: center;
    margin-bottom: 100px;
    display: flex;
    width: 18%;
    align-items: center;
}
.information-title i {
    font-size: 2.0rem;  
    margin-top: 10px;
    animation:  information-animation infinite 3s;
}
.information-img {
    width: 500px;
    height: 300px;
}
.information-img img {
    width: 100%;
    height: 100%;
}

.information-content{
	font-family: 'Happiness-Sans-Title';
    font-size: large;
	width: 600px;
}

/* information section 끝 */

/* introduce 시작 */

/* visual-slider 부분 시작 */

@keyframes visual-slider {
    8.3% {
        transform: translateX(0%);

    }
    16.6% {
        transform: translateX(-100%);
    }
    24.9% {
        transform: translateX(-100%);
    }
    33.2% {
        transform: translateX(-200%);
    }
    41.5% {
        transform: translateX(-200%);
    }
    49.8% {
        transform: translateX(-300%);
    }
    58.1% {
        transform: translateX(-300%);
    }
    66.4% {
        transform: translateX(-400%);
    }
    74.7% {
        transform: translateX(-400%);
    }
    83% {
        transform: translateX(-500%);
    }
    91.3% {
        transform: translateX(-500%);
    }
    100% {
        transform: translateX(0%);
    }
}

/* visual-slider 부분 끝 */

/* introduce i animation 시작 */

@keyframes i-go {
    0% {
        transform: translateX(0%);
    }
    50% {
        transform: translateX(40%);
    }
    100% {
        transform: translateX(40%);
    }
}

/* introduce- i animation 끝 */

#introduce-wrapper {
    font-family: 'Happiness-Sans-Title';
    height: 1400px;
}
#introduce-wrapper .introduce-container .introduce-title {
    text-align: center;
    display: flex;
    width: 8%;
    align-items: center;


}
.introduce-title i{
    font-size: 2.5rem;
    margin-top: 10px;
    animation: i-go infinite 3s;
    transition: all .3s;
}
.introduce-title h2{
    font-size: 40px;
}

.introduce-content {
    text-align: center;
    font-size: 18px;
    
}

.visual-container {
    height: 34vw;
    border-radius: 125px;
    overflow: hidden;
    width: 80%;
    margin: 0 auto;
    margin-top: 50px;
    margin-bottom: 50px;

}
.visual-img {
    height: 100%;
    width: 100%;
    animation: visual-slider  35s infinite;
}
.introduce-font {
    text-align: center;
}
.introduce-img:nth-of-type(1) {
    object-fit: cover;
    width: 100%;
    height: 100%;
    right: 0;
    position: absolute;
}
.introduce-img img:nth-of-type(1) {
    object-fit: cover;
    
    height: 100%;
    width: 100%;
}
.introduce-img:nth-of-type(2) {
    right: -100%;
    position: absolute;
    width: 100%;
    height: 100%;

}
.introduce-img img:nth-of-type(2) {
    object-fit: cover;
    height: 100%;
    width: 100%;
}
.introduce-img:nth-of-type(3) {
    right: -200%;
    position: absolute;
    width: 100%;
    height: 100%;

}
.introduce-img img:nth-of-type(3) {
    object-fit: cover;
    height: 100%;
    width: 100%;
}
.introduce-img:nth-of-type(4) {
    right: -300%;
    position: absolute;
    width: 100%;
    height: 100%;

}
.introduce-img img:nth-of-type(4) {
    object-fit: cover;
    height: 100%;
    width: 100%;
}
.introduce-img:nth-of-type(5) {
    right: -400%;
    position: absolute;
    width: 100%;
    height: 100%;

}
.introduce-img img:nth-of-type(5) {
    object-fit: cover;
    height: 100%;
    width: 100%;
}
.introduce-img:nth-of-type(6) {
    right: -500%;
    position: absolute;
    width: 100%;
    height: 100%;

}
.introduce-img img:nth-of-type(6) {
    object-fit: cover;
    height: 100%;
    width: 100%;
}

/* introduce 끝 */


/* card 부분 시작 */

/* country-animation i 부분 시작 */
@keyframes country-animation {
    0% {
        transform: translateY(0%);
    }
    100% {
        transform: translate(30% ,30%);
    }
}

/* country-animation i 부분 끝 */

#country {
    top: 80%;
    height: 1050px;
}

#country > h2 {
    text-align: center;
    font-size: 2.5rem;
    font-weight: bolder;
}
.country-title {
    display: flex;
    width: 8%;
    justify-content: center;

}
.country-title i {
    font-size: 2rem;
    animation: country-animation infinite 3s;
    
}
.container {
    position: relative;
    width: 70%;
    display: grid;
    grid-template-columns: repeat(3,3fr);
    grid-gap: 0px;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
    padding: 30px;    
}
.container .card {
    position: relative;
    border-radius: 5%;
    max-width: 350px;
    height:215px;
    margin: 30px 10px;
    padding: 20px 15px;
    display: flex;
    flex-direction: column;
    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.5);
    transition: .3s ease-in-out;

}
.container .card:hover {
    height: 450px;
}
.container .crad .imgBx {
    position: relative;
    width: 350px;
    height: 260px;
    top: -60px;
    left: 20px;
    box-shadow: 0 5px 20px rgba(255, 255, 255, 0.2);

}
.container .card .imgBx img {
    width: 310px;
    border-radius: 5%;
    height: 180px;
}
.container .card .content {
    position: relative;
    margin-top: -140px;
    padding: 10px 15px;
    text-align: center;
    color: #111;
    visibility: hidden;
    opacity: 0;
    transition: .3s ease-in-out;
}
.container .card:hover .content {
    visibility: visible;
    opacity: 1;
    margin-top: 10px;
    transition-delay: .3s;
    
}
.content-detail{
	font-family: 'Happiness-Sans-Title';
}

/* card 부분 끝 */



/* footer 부분 */

footer {
    background: #bdc3c7;  /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #2c3e50, #bdc3c7);  /* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to right, #2c3e50, #bdc3c7); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    height: 300px;
    text-align: center;
    align-items: center;
    display: flex;
    flex: 1;
    color: white;

}
.footer-title h2 {
    font-size: 3rem;
    margin-bottom: 20px;
}
.footer-font {
    line-height: 25px;
}
footer hr {
    width: 100%;
    margin-top: 20px;
}
.footer-icon i{
    font-size: 30px;
    margin-top: 30px;
    margin-left: 20px;
    color: #fff;
    transition: all .3s;

}
.footer-icon a:hover i{
    cursor: pointer;
    transform: translateY(-25%);
}

/* footer 부분 끝 */

/* 팝업 부분 시작 */

.modal{    
    width: 100%;    
    height: 100vh;
    position: fixed;
    left: 0;
    top: 0;
    align-items: center;
    justify-content: center;
    background-color: rgba(0, 0, 0, 0.2);
    display:none;
}

.content-popup{
    margin: auto;
    position:absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    padding: 50px;
    background-color: white;
}
.content-popup button {
    position: relative;
    margin-top: 100px;
    width: 120px;
    margin:  0 auto;
    margin-right: 80px;
    margin-left: 80px;
}
.close {
    background-color: white;
    transition: all .3s;
    border: 1px black solid;
    padding: 20px;
}
.close:hover {
    cursor: pointer;
    background-color: #111;
    color: white;
}

.content-popup i{
    color: #000;
    padding-right: 5px;
}

.content-popup .content-text{
    font-family: '웰컴체 Regular';
    color: #000;
    padding-left: 15px;
}
.content-popup h1{
    color: #000;
}


/* 팝업 부분 끝 */
</style>
</head>
<body>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="./js/main.js"></script>
    <script src="./file/jquery-3.4.1.min.js"></script>
    <script>
        // 모달창 jquery 부분
        $(() => {
            $('.fa-solid').click(() => {
                $(".modal").fadeToggle();
            });
        })
        $(() => {
            $('.content-popup').click(() => {
                $(".modal").fadeToggle();
            });
        })
        // 모달창 jquery 부분 끝
    </script>

    <!-- 헤더 시작 -->
    <header>
        <ul class="title">
            <div class="title-logo">
                <input type="checkbox" id="menuicon">
                <label for="menuicon">
                    <span></span>
                    <span></span>
                    <span></span>
                </label>
                <div class="sidebar">
                    <h2>Tripaza</h2><br>
                    <div class="sidebar-item">
                        <div class="title-login-sub">
                            <li><a href="http://localhost:8090/login/login.jsp">로그인</a></li>
                            <li><a href="http://localhost:8090/join/join.jsp">회원가입</a></li>
                        </div><br><br>
                        <li><a href="#">홈</a></li><br>
                        <li><a href="#">나라 별 보기</a></li><br>
                        <li><a href="http://localhost:8090/login/login.jsp">커뮤니티</a></li><br>
                        <li><a href="http://localhost:8090/login/login.jsp">개인</a></li><br>
                    </div>
                </div>
                <a href="#">
                    <h1>Tripaza</h1>
                </a>
            </div>
        </ul>
    </header>
    <!-- 헤더 끝 -->

    <!-- visual 시작 -->
    <section id="visual-container">
        <div class="visual-font">
            <p><span class="f">Smart item</span> for</p>
            <p>your brand are here</p>
            <a href="#" class="map-button">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                지도로 가기
            </a>
        </div>
    </section>
    <!-- visual 끝 -->

	<!-- 설명 시작 -->
    <!-- br, item 부분 나중에 수정-->
    <section id="information-wrapper">
        <div class="information-container">
            <div class="information-title">
                <h2>Tripaza</h2>
                <i class="fa-solid fa-plane-departure"></i>
            </div>
            <div class="information-box">

                <div class="information-img">
                    <img src="./images/trip.jpg" alt="">
                </div>
                <div class="information-content">
                    <p>Tripaza 는 코로나 종식에 한발짝 더 가까워진 지금 <br>
                        해외여행에 보다 쉽게 접근할 수 있도록,<br>
                        낯선 곳에서 어려움 없이 즐길 수 있기를 바라는 마음으로 만들어졌습니다.<br><br>
                        당신이 가는 그 곳이 나중에 아름다운 추억으로 남기를 바라며 </p>
                </div>
            </div>

        </div>

    </section>
    <!-- 설명 끝 -->
    <section id="introduce-wrapper">
        <div class="introduce-container">
            <div class="introduce-title">
                <h2>Tripaza</h2>
                <i class="fa-solid fa-plane"></i>
            </div>
            <div class="introduce-content">
                <p>나라별 소개</p>
            </div>
            <div class="visual-container">
                <div class="visual-img">
                    <div class="introduce-img"><img src="./images/미국/링컨기념관.jpeg" alt=""></div>
                    <div class="introduce-img"><img src="./images/영국/빅벤.jpeg" alt=""></div>
                    <div class="introduce-img"><img src="./images/일본/후지산_밤.jpeg" alt=""></div>
                    <div class="introduce-img"><img src="./images/중국/만리장성.jpeg" alt=""></div>
                    <div class="introduce-img"><img src="./images/프랑스/몽생미셸_밤.jpg" alt=""></div>
                    <div class="introduce-img"><img src="./images/한국/경복궁_밤.jpg" alt=""></div>
                </div>
            </div>
            <div class="introduce-font">
                <p>각 나라에서 가장 유명한 명소들을 방문해본 사람들의 감상과 경험담을 바탕으로 <br>
                    더 즐거운 여행을 계획하실 수 있습니다!</p>
            </div>
        </div>
    </section>


    <!-- card 시작 -->
    <section id="country">
        <div class="country-title">
            <h2>나라 별 보기</h2>
            <i class="fa-solid fa-plane-arrival"></i>
        </div>

        <div class="container">

            <a href="">
                <div class="card">
                    <div class="imgBx">
                        <img src="./images/한국/경복궁.jpg" alt="">
                    </div>
                    <div class="content">
                        <h2>한국</h2><br>
                        <p>5000년의 역사를 가지고 있는 한국<br>
                            한국은 서쪽의 중국과 동쪽의 일본 사이에 놓여 있으며 고유한 언어를 사용한다. <br>
                            최근 케이팝이나 드라마 등 문화적으로 많은 주목을 받고 있다.</p><br>
                        <p class="content-detail">주요 관광지 : 서울, 제주도, 부산</p>
                    </div>
                </div>
            </a>

            <a href="">
                <div class="card">
                    <div class="imgBx">
                        <img src="./images/일본/후지산_밤.jpeg" alt="">
                    </div>
                    <div class="content">
                        <h2>일본</h2><br>
                        <p>동아시아에 있는 섬으로 이루어진 나라
                            독특한 문화 양식, 애니메이션으로 유명한 나라이다.
                            "태양이 떠오르는 나라" 라고 불리기도 한다</p><br>
                        <p class="content-detail">주요 관광지 : 도쿄, 오사카, 쿄토</p>
                    </div>
                </div>
            </a>

            <a href="">
                <div class="card">
                    <div class="imgBx">
                        <img src="./images/미국/링컨기념관.jpeg" alt="">
                    </div>
                    <div class="content">
                        <h2>미국</h2>
                        <p>50개 주와 1개의 특별구로 이루어진 연방제 공화국<br>
                            다양한 인종이 섞여 있는 나라이며 이민자의 나라로 불리기도 한다. <br>
                            여행하기 좋은 나라로 유명하다.</p><br>
                        <p class="content-detail">주요 관광지 : 뉴욕, 샌프란시스코, 보스턴</p>
                    </div>
                </div>
            </a>

            <a href="">
                <div class="card">
                    <div class="imgBx">
                        <img src="./images/프랑스/에펠탑.jpg" alt="">
                    </div>
                    <div class="content">
                        <h2>프랑스</h2>
                        <p>서유럽에 위치한 예술과 낭만의 나라<br>
                            세계에서 가장 인기있는 여행지 중 하나이며 유명한 소설, 드라마, 영화 등의 배경이 된 곳이다.<br>
                            디저트로 유명한 나라이기도 하다.</p><br>
                        <p class="content-detail">주요 관광지 : 파리, 마르세유, 몽펠리에</p>
                    </div>
                </div>
            </a>
        </div>
    </section>
    <!-- card 끝 -->

    <!-- footer 시작-->
    <footer>
        <div class="footer-container">
            <div class="footer-content">
                <div class="footer-title">
                    <h2>Tripaza</h2>

                </div>
                <div class="footer-font">
                    <p> 2022 Team Project &copy; copyright </p>
                </div>
                <hr>
                <div class="footer-icon">
                    <a href="https://github.com/xooslo/Tripaza"><i class="fa-brands fa-github"></i></a>
                    <a><i class="fa-solid fa-people-group"></i></a>
                    <div class="modal">
                            <div class="content-popup">
                                <h1>개발자 소개</h1>
                                <table>
                                    <tr>
                                        <td><i class="fa-solid fa-user-astronaut fa-6x"></i></td>
                                        <td><i class="fa-solid fa-user-ninja fa-6x"></i></td>
                                        <td><i class="fa-solid fa-user-secret fa-6x"></i></td>
                                        <td><i class="fa-solid fa-circle-user fa-6x"></i></td>
                                    </tr>
                                    <tr>
                                        <th class="content-text">팀장</th>
                                        <td class="content-text">팀원</td>
                                        <td class="content-text">팀원</td>
                                        <td class="content-text">팀원</td>
                                    </tr>
                                    <tr>
                                        <td class="content-text">임은솔</td>
                                        <td class="content-text">신유찬</td>
                                        <td class="content-text">김용환</td>
                                        <td class="content-text">임수연</td>
                                    </tr>
                                </table>
                                <br><br>
                                <button class="close">닫기</button>
                            </div>
                        </div>
                    <a href="#"><i class="fa-regular fa-circle-question"></i></a>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer 끝-->
</body>
</body>
</html>