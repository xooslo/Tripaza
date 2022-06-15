<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프랑스</title>
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

body {
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
    background-color: #262f80;
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

/* section 부분 시작 */
.Section-1 {
    height: 2600px;
    margin: 0;
    padding: 0px;
}

.li1{
    float: left;
    padding: 10px;
}

.li2{
    list-style: none;
    height: 30px;
    width: 220px;
    border: 0px solid;
    padding: 10px;
}

.li3{
    border: 1px solid gray;
    width: 280px;
    height: 40px;
}

.li4:hover{
    cursor: pointer;
}

.li4{
    background-color: #505792;
    color: whitesmoke;
    width: 60px;
    height: 30px;
    border: 0px solid;
    margin: 5px;
    padding: 3px;
    border-radius: 15px;
}

.ul1{
    display: inline-block;
}

#imgF{
    width: 500px;
    height: 350px;
    border: 0;
    padding: 20px 0px;
}


#wrapper {
    margin: 50px auto;
    width: 2000px;
}

.aside{
    margin-top: 150px;
    margin-left: 50px;
    width: 1600px;
    height: 800px;
    float: left;
}

.aside h1{
    font-size: 42px;
    margin-bottom: 5px;
}

.aside h2{
    margin-top: 10px;
    font-size: 28px;
}


.aside h4{
    margin-left: 5px;
    color: rgb(106, 106, 106);
    font-size: 17px;
    margin-bottom: 20px;
}


.aside h2,p{
    padding: 10px 0px;
}

.community{
    margin-top: -20px;
    width: 500px;
    height: 350px;
    padding: 40px;
    border: 1px solid gray;
    border-radius: 10px;
}


.community-move{
    font-size: 20px;
    font-weight: bold;

    
}

.Section-2{
    float: right;
    position: relative;
}





/* section 부분 끝 */



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
.footer-icon a > i{
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
    width: 100%;
    margin:  0 auto;
    margin-right: 600px;
    margin-top: 600px;
}
.close {
    background-color: white;
    width: 100%;
    transition: all .3s;
    border: 1px black solid;
    padding: 20px;

}

.close:hover {
    cursor: pointer;
    background-color: #0151E5;
    color: white;
    border-color: white;
}
.popup-table {
    color: black;
    line-height: 40px;
    display: flex;
    justify-content: center;
    align-items: center;
    transform: translateY(180%);
}
.popup-table .popup-text i{
    color: black;
    align-items: center;

}
.popup-text p{
    display: flex;
    justify-content: center;
    text-align: center;
    font-weight: bold;
    font-size: 2rem;
   
}
.popup-title h2 {
    color: black;
    font-weight: bold;
    font-size: 2.5rem;
    font-family: '웰컴체 Bold';

    
}
/* 팝업 부분 끝 */

/* footer 부분 끝 */
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
                <a href="http://127.0.0.1:5500/index.html">
                    <h1>Tripaza</h1>
                </a>
            </div>
        </ul>
    </header>
    <!-- 헤더 끝 -->

    <!-- section 시작 -->
    <div class="Section-1">
        <section id="main">
            <div id="wrapper1">
                <div id="wrappper2">
                    <div class="aside">
                        <h1>프랑스
                            <i class="fa-solid fa-globe"></i>
                        </h1>
                        <h4><i class="fa-solid fa-house"></i> <a href="http://localhost:8090/index.jsp">홈</a> 〉 나라 별 보기 〉 프랑스 </h4>

                        <div class="Section-2">
                            <aside class="sub1">
                                <div class="community">
                                    <ul>
                                        <li class="community-move"><a href="http://localhost:8090/login/login.jsp"> 커뮤니티
                                                가기</a>&nbsp;<i class="fa-solid fa-angles-right"></i>
                                        </li><br>
                                        <input type="text" class="li3">
                                        <input type="button" class="li4" value="검색 ">
                                    </ul><br>

                                    <ul>
                                        <h3>나라 정보</h3>
                                        <li class="li2"><i class="fa-solid fa-flag"></i> 파리 </li>
                                        <li class="li2"><i class="fa-solid fa-language"></i> 프랑스어 </li>
                                        <li class="li2"><i class="fa-solid fa-sack-dollar"></i> 유로(€) </li>
                                        <li class="li2"><i class="fa-solid fa-temperature-half"></i> 2°C ~ 25°C </li>
                                    </ul>
                                </div>
                            </aside>
                        </div>
                        <hr>

					<div class="landmark">
                        <h2>랜드마크</h2>
                        <h4>에펠탑(Tour Eiffel)</h4>
                        <p>에펠탑은 1889년 파리 마르스 광장에 건설된 탑이다.<br> 
                        프랑스의 대표적인 건축물이자 랜드마크, 상징으로 통하며, 탑은 격자 구조로 이루어져 있고 파리에서 가장 높은 건축물에 속한다.<br>
                        매년 수백만 명 이상의 관광객이 방문할 만큼 세계적인 유료 관람지이다. <br>
                        파리 에펠탑의 명칭은 에펠탑을 직접 디자인한 프랑스의 공학자 및 건축가 ‘귀스타브 에펠’의 이름에서 명칭을 얻었다. <br>
                        에펠탑은 그 높이가 324m이며, 이는 81층 높이 건물과 맞먹는 높이로 알려진다.<br>
                        맨 처음 건설될 당시에만 해도 ‘흉물’ 또는 ‘천박하다’ 등의 비판을 받은 에펠탑이지만, 현재의 에펠탑은 프랑스 파리의 자부심이자 랜드마크로 자리 잡았다. </p>
                        <img src="/images/프랑스/에펠탑(2).jpg" alt="ImgErr" id="imgF">

                        <h4>개선문(Arc de Triomphe)</h4>
                        <p>이 기념비는 프랑스를 위해 봉사를 한 목숨을 바친 사람들의 기념으로 세워졌으며, <br> 
                        제1차 세계 대전 중 사망한 개인들을 영원한 불꽃으로 기리는 무명용사의 무덤의 본거지이기도 하다. <br> 
                        개선문은 파리에서 가장 유명한 명소 중 하나로 샹젤리제 거리(Avenue des Champs-Élysées)근처에 위치해 있다. <br> 
                        기념비에 가려면 샹젤리제 거리(Avenue des Champs-Élysées) 북쪽의 지하 보행자 터널로 가야한다.</p><br>
                        <img src="/images/프랑스/에투알-개선문.jpg" alt="ImgErr" id="imgF">
                        <hr>
					</div>
					<div class="traditional-food">
                        <h2>대표음식</h2>
                        <h4>미식의 나라, 미슐랭의 나라</h4>
                        <p>프랑스하면 보통 에펠탑이나 개선문, 루브르 박물관, 또는 명품 브랜드 등을 떠올린다. 하지만 프랑스가 세계 최고의 미식 국가라는 사실을 잊지말자.<br>
                        프랑스는 북유럽과 남유럽 사이에 있어 역사적으로 많은 문화가 뒤섞여있는 국가로, 지역마다 요리도 천차만별인데 수도인 파리에서는 이 모든 요리를 맛볼 수 있다.<br>
                        프랑스에서 꼭 먹어봐야 하는 음식 꼽히는 것으로는 콩피 드 까나르, 푸아그라, 에스카르고, 부야베스 등이 있다. </p>
                        <img src="/images/프랑스/대표음식.jpg" alt="ImgErr" id="imgF">
                    </div>
                        <hr>
					<div class="traditional">
                        <h2>문화</h2>
                        <h4>프랑스의 문화</h4>
                        <p>프랑스의 문화는 깊은 역사적 사건들과, 외국 및 내부 힘과 그룹, 여러 지리적 요건들에 의해 형성되었다. <br>
                        프랑스, 특히 파리는 유럽에서 처음으로 17세기 이후 높은 문화의 중심지로서 전세계에서 중요한 역할을 하고 있다. <br>
                        19세기 후반부터 프랑스는 영화, 패션과 요리에서 중요한 역할을 하고 있다. 프랑스 문화의 중요성은 경제적, 정치적, 군사적 주용성에 따라 수세기에 걸쳐 흥망성쇠하고 있다. <br>
                        오늘날 프랑스 문화는 큰 지역 및 사회 경제적 차이에 의해 강력한 통합 경향을 나타나고 있다.</p><br>
                        <img src="/images/프랑스/몽생미셸.jpg" alt="imgErr" id="imgF">
					</div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!--  
    <div class="Section-2">
        <section class="sub1">
            <div class="community">
                <ul>
                    <li class="community-move"><a href="http://localhost:8090/login/login.jsp"> 커뮤니티 가기</a>
                    </li><br>
                    <input type="text" class="li2">
                    <input type="button" class="li3" value=" 검색 ">
                </ul><br>

                <ul>
                    <h3>제목5</h3>
                    <li class="li2">내용8</li>
                    <li class="li2">내용9</li>
                    <li class="li2">내용10</li>
                    <li class="li2">내용11</li>
                </ul>
            </div>
        </section>
    </div>
    -->
    <!-- section 끝 -->


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
                            <div class="popup-title">
                                <h2>팀원소개</h2>
                            </div>
                            <div class="popup-table">
                                <div class="popup-text">
                                    <i class="fa-solid fa-user-astronaut fa-6x"></i>
                                    <p>팀장</p>
                                    <p>임은솔</p>
                                </div>
                                <div class="popup-text">
                                    <i class="fa-solid fa-user-ninja fa-6x"></i>

                                    <p>팀원</p>
                                    <p>신유찬</p>
                                </div>
                                <div class="popup-text">
                                    <i class="fa-solid fa-user-secret fa-6x"></i>

                                    <p>팀원</p>
                                    <p>김용환</p>
                                </div>
                                <div class="popup-text">
                                    <i class="fa-solid fa-circle-user fa-6x"></i>
                                    <p>팀원</p>
                                    <p>임수연</p>
                                </div>
                            </div>


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
</html>