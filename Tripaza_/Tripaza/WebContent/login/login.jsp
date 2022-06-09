<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

/* 로그인 페이지 시작 */
#login_container {
    position: absolute;
    left: 50%;
    top: 50%;
    width: 100%;
    text-align: center;
    transform: translate(-50% , -75%);
}

.login_title {
    margin-bottom: 30px;
    margin-top: 30px;
}

.login_title h2 {
    font-weight: bolder;
}

.id_password input:nth-of-type(2){
    margin-top: 10px;
}

.id_password input {
    padding: 20px;
    opacity: 0.5;
    width: 15%;
    border-radius: 3px;
    border: 1px solid rgba(0, 0, 0, 0.322);
}

.pass_find {
    width: 18%;
    margin: 0 auto;
    display: flex;
    justify-content: space-around;
    margin-top: 30px;
    margin-bottom: 30px;
}

.login_join button {
    padding: 20px;
    width: 15%;
    border: 1px solid #0151E5;
}

.login_join button:nth-of-type(2) {
    margin-top: 10px;
    background-color: white;
    color: #5F00A1;
    font-size: 1rem;
}

.btn_join {
    background-color: white;
    margin-top: 10px;
}

.btn_login {
    background-color: #0151E5;
    color: white;
    font-size: 1rem;
}

.btn_login:hover {
    cursor: pointer;
}

.btn_join:hover {
    cursor: pointer;
}

.pass_find a{
    text-decoration: none;
    color: black;
}
/* 로그인 페이지 끝 */

/* footer 부분 */
footer {
    background-color: rgba(0, 0, 0, 0.514);
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

    <div class="wrapper">
<%
	String id = (String)session.getAttribute("loginOK");
	
	if(id != null){
		pageContext.forward("/index.jsp");
	} else {
%>
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
                            <li><a href="#">커뮤니티</a></li><br>
                            <li><a href="#">개인</a></li>
                        </div>
                    </div>
                <h1>Tripaza</h1>
            </div>
            <div class="title-login">
                <li><a href="http://127.0.0.1:5500/login.html#">로그인</a></li>
                <li><a href="http://127.0.0.1:5500/join.html">회원가입</a></li>
            </div>
        </ul>
    </header>

    <form action="/login" method="get">
    	<div id="login_container">
        	<div class="login_title">
            	<h2>로그인</h2>
        	</div>
        	<div class="id_password">
            	<input type="text" name="id" id="id" placeholder="아이디를 입력해주세요"><br>
            	<input type="password" name="pwd" id="pwd" placeholder="비밀번호를 입력해주세요">
        	</div>
        	<div class="pass_find">
            	<label for="checkbox"><input type="checkbox" name="checkbox" id="checkbox"> 보안접속</label>
            	&nbsp; <p><a href="#">아이디 찾기</a> <span class="bar">|</span><a href="#"> 비밀번호 찾기</a></p>
        	</div>
        	<div class="login_join">
            	<a href="#"><button class="btn_login">로그인</button><br></a>
            	<a href="http://127.0.0.1:5500/join.html"><button class="btn_join">회원가입</button></a> 
        	</div>
    	</div>
    </form>
<%
	}
%>
    
    </div>
</body>
</html>