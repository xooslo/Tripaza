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

.title h1 {
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
    padding: 10px;
    border-radius: 10px;
}

.title-login li {
    margin-left: 20px;
}

.title-login a:hover {
    background-color: rgba(0, 0, 0, 0.514);
    color: white;
    transition: all .8s ease;
    
}
/* header 부분 끝 */

#visual-container {
    background-image: url(/images/global.JPG);
    background-position-y: 100px;
    background-position-x: center;
    background-repeat: no-repeat;
    height: 1300px;
}

.visual-font {
    position: absolute;
    font-size: 5rem;
    top: 280px;
    left: 8%;
    color: black;
    font-family: 'Times New Roman', Times, serif;
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

/* 버튼 디자인 끝 */

/* card 부분 시작 */
@keyframes country-font {
    
}
#country {
    top: 80%;
    height: 1300px;
}

#country > h2 {
    text-align: left;
    padding-left: 100px;
    font-size: 2.5rem;
    font-weight: bolder;
}
.container {
    position: relative;
    width: 100%;
    display: flex;
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
    margin-top: 0px;
    transition-delay: .3s;
    
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

</style>
</head>
<body>
<body>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="./js/main.js"></script>

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
                        <li><a href="#">홈</a></li><br>
                        <li><a href="#">나라 별 보기</a></li><br>
                        <li><a href="http://localhost:8090/login/login.jsp">커뮤니티</a></li><br>
                        <li><a href="http://localhost:8090/login/login.jsp">개인</a></li><br>
                    </div>
                </div>
                <h1>Tripaza</h1>
            </div>
                <div class="title-login">
                    <li><a href="http://localhost:8090/login/login.jsp">로그인</a></li>
                    <li><a href="http://localhost:8090/join/join.jsp">회원가입</a></li>
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

    <!-- card 시작 -->
    <section id="country">
        <h2>나라 별 보기</h2>
        <div class="container">

            <a href="">
                <div class="card">
                    <div class="imgBx">
                        <img src="./images/한국/경복궁.jpg" alt="">
                    </div>
                    <div class="content">
                        <h2>한국</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. <br>
                            Minus distinctio quo repellendus sint ratione placeat. Fuga et incidunt maiores. <br>
                            Amet vitae distinctio unde fugit sint enim perspiciatis necessitatibus molestiae provident.</p>
                    </div>
                </div>
            </a>

            <a href="">
                <div class="card">
                    <div class="imgBx">
                        <img src="./images/일본/후지산_밤.jpeg" alt="">
                    </div>
                    <div class="content">
                        <h2>일본</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. <br>
                            Minus distinctio quo repellendus sint ratione placeat. Fuga et incidunt maiores. <br>
                            Amet vitae distinctio unde fugit sint enim perspiciatis necessitatibus molestiae provident.</p>
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
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. <br>
                            Minus distinctio quo repellendus sint ratione placeat. Fuga et incidunt maiores. <br>
                            Amet vitae distinctio unde fugit sint enim perspiciatis necessitatibus molestiae provident.</p>
                    </div>
                </div>
            </a>

            <a href="">
                <div class="card">
                    <div class="imgBx">
                        <img src="./images/프랑스/콩코르드다리.jpeg" alt="">
                    </div>
                    <div class="content">
                        <h2>프랑스</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. <br>
                            Minus distinctio quo repellendus sint ratione placeat. Fuga et incidunt maiores. <br>
                            Amet vitae distinctio unde fugit sint enim perspiciatis necessitatibus molestiae provident.</p>
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
                    <a href="#"><i class="fa-solid fa-people-group"></i></a>
                    <a href="#"><i class="fa-regular fa-circle-question"></i></a>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer 끝-->
</body>
</body>
</html>