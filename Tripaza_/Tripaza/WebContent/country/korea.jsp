<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한국</title>
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
                        <h1>한국
                            <i class="fa-solid fa-globe"></i>
                        </h1>
                        <h4><i class="fa-solid fa-house"></i> <a href="http://localhost:8090/index.jsp">홈</a> 〉 나라 별 보기 〉 한국 </h4>

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
                                        <li class="li2"><i class="fa-solid fa-flag"></i> 서울 </li>
                                        <li class="li2"><i class="fa-solid fa-language"></i> 한국어 </li>
                                        <li class="li2"><i class="fa-solid fa-sack-dollar"></i> 원(₩) </li>
                                        <li class="li2"><i class="fa-solid fa-temperature-half"></i> -1°C ~ 25°C </li>
                                    </ul>
                                </div>
                            </aside>
                        </div>
                        <hr>

					<div class="landmark">
                        <h2>랜드마크</h2>
                        <h4>서울</h4>
                        <p>서울특별시는 대한민국의 수도이자 최대 도시이다.<br> 
                        조선의 수도가 된 이후로 현재까지 대한민국 정치·경제·사회·문화의 중심지이다. <br>
                        중앙으로 한강이 흐르고, 이를 기준으로 강북과 강남 지역으로 구분한다. 북한산, 관악산, 도봉산, 불암산, 인릉산, 청계산, 아차산 등의 여러 산들로 둘러싸인 분지 지형의 도시이다.</p>
                        <img src="/images/한국/한국야경.jpg" alt="ImgErr" id="imgF">

                        <h4>경복궁</h4>
                        <p>경복궁은 조선 왕조 제일의 법궁이다.  <br> 
                        1395년 태조 이성계가 창건하였고, 1592년 임진 왜란으로 불타 없어졌다가, 고종 때인 1867년 중건 되었다. <br>
                        흥선대원군이 주도한 중건 경복궁은 500여 동의 건물들이 미로같이 빼곡히 들어선 웅장한 모습 이었다. <br> 
           	경복궁은 서울 중심에 위치하고 있으며 아름다운 경관으로 많은 관광객들이 찾는 명소이다.</p><br>
                        <img src="/images/한국/경복궁.jpg" alt="ImgErr" id="imgF">
                        <hr>
					</div>
					<div class="traditional-food">
                        <h2>대표음식</h2>
                        <h4>반찬의 나라</h4>
                        <p>복잡한 궁중 요리에서부터 지방의 특색 요리와 현대의 맛있는 요리에 이르기까지 재료와 조리법이 매우 다양하다.<br>
                         전통적인 한국 정식은 밥, 국, 김치 등과 함께 나오는 많은 반찬들로 이루어진다. <br>
                         한국 요리는 주로 쌀을 기반으로 일반적으로 사용되는 성분 포함 참기름, 된장, 간장, 소금, 마늘, 생강, 고춧가루, 다시마 국물 등으로 맛을 낸다. <br>
                         김치는 거의 항상 모든 음식에서 제공된다. 식단은 계절에 상관없이 거의 대부분의 식단을 맛볼 수 있다. </p>
                        <img src="/images/한국/한국음식.jpg" alt="ImgErr" id="imgF">
                    </div>
                        <hr>
					<div class="traditional">
                        <h2>문화</h2>
                        <h4>한국의 문화</h4>
                        <p>한국의 문화적 측면에서의 정체성은 한국의 전통적 한국문화의 특징을 이해하고 생활화하는데 있다. <br>
                        한국문화의 특징은 한글, 한복, 한옥, 한식, 국악(가요 등), 한지, 예절, 전통의례, 국기, 국가(國歌), 스포츠, <br>
                        놀이문화 등 개인생활 그 자체가 바로 한국인의 정체성이다.</p><br>
                        <img src="/images/한국/남산.jpg" alt="imgErr" id="imgF">
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