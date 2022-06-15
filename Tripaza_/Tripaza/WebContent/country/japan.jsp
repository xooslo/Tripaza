<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일본</title>
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
                        <h1>일본
                            <i class="fa-solid fa-globe"></i>
                        </h1>
                        <h4><i class="fa-solid fa-house"></i> <a href="http://localhost:8090/index.jsp">홈</a> 〉 나라 별 보기 〉 일본 </h4>

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
                                        <li class="li2"><i class="fa-solid fa-flag"></i> 도쿄 </li>
                                        <li class="li2"><i class="fa-solid fa-language"></i> 일본어 </li>
                                        <li class="li2"><i class="fa-solid fa-sack-dollar"></i> 엔(¥) </li>
                                        <li class="li2"><i class="fa-solid fa-temperature-half"></i> -2°C ~ 35°C </li>
                                    </ul>
                                </div>
                            </aside>
                        </div>
                        <hr>

					<div class="landmark">
                        <h2>랜드마크</h2>
                        <h4>도쿄타워(Tokyo Tower)</h4>
                        <p>도쿄 타워는 오사카의 신문왕이라 불렸던 마에다 히사마치에 의해 만들어진 전파탑으로써,<br>
                         방송사업의 장래성에 눈을 두었던 마에다 히사미치가 각 방송사의 송신탑을 일체화시키는 구상에 의해 만들어지게 되었다.<br>
                         정식명칭은 일본 전파탑이며 높이는 333m로서, 비슷한 모습을 갖춘 높이 324m의 프랑스 파리 에펠탑 보다 9m 더 높다.</p><br>
                        <img src="/images/일본/도쿄타워.jpg" alt="ImgErr" id="imgF">

                        <h4>오사카성</h4>
                        <p>우리에게 임진왜란의 주범으로 알려진 도요토미 히데요시(豊臣秀吉)의 본거지이다.<br>
                        오사카성은 축성 이래, 몇 번이나 일본의 역사에서 중요한 전투의 무대가 되어 왔다. <br>
                        이러한 장대한 역사의 드라마를 오늘에 전해주는 사적이기 때문에 일본 국내는 물론 해외 관광객들로부터도 인기가 높은 관광지이다.</p><br>
                        <img src="/images/일본/오사카성.jpeg" alt="ImgErr" id="imgF">
                        <hr>
					</div>
					<div class="traditional-food">
                        <h2>대표음식</h2>
                        <h4>눈과 입으로 먹는 음식</h4>
                        <p>일본도 한국과 마찬가지로 밥이 주식이며, 부식으로 반찬이 놓인다. <br>
                        또 섬나라이므로 신선한 어패류가 풍부하여 생선 요리가 다양하게 발달되어 있으며, 그 중에서도 생선회가 유명하다. <br>
                        자극적인 조미료나 향신료를 많이 사용하지 않으므로 맛이 담백하다. 모양과 빛깔, 그릇에 담는 기술이 뛰어나다. </p><br>
                        <img src="/images/일본/일본음식.jpg" alt="ImgErr" id="imgF">
                    </div>
                        <hr>
					<div class="traditional">
                        <h2>문화</h2>
                        <h4>일본의 문화</h4>
                        <p>일본은 주변이 바다로 둘러싸인 섬나라이며, 자연이 풍부한 나라이다. <br>
                        그런 섬나라인 일본 문화의 특징은 자연으로 반대하고 모든 자연의 흐름에 중요시하는 사상을 가지고 있다.</p><br>
                        <img src="/images/일본/후지산_밤.jpeg" alt="imgErr" id="imgF">
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