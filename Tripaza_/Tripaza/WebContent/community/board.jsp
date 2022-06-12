<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="dao.ContentDAO" %>
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

@font-face {
    font-family: 'DMSerifDisplay-Regular';
    src: url("../css/DM_Serif_Display/DMSerifDisplay-Regular.ttf");
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
    padding: 0px 10px;
    border-radius: 10px;
    position: relative;
}

.title-login li {
    margin-left: 20px;
}

.title-login li a:hover{
    color: black;
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

/* header 부분 끝 */

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
                        <li><a href="http://localhost:8090/community/board.jsp">커뮤니티</a></li><br>
                        <li><a href="http://localhost:8090/user/user.jsp">개인</a></li><br>
                    </div>
                </div>
                <h1>Tripaza</h1>
            </div>
                <form action="/logout" method="get">
                	<div class="title-login">
                    	<li><a href="http://localhost:8090/index.jsp">로그아웃</a></li>
                	</div>
                </form>
        </ul>
    </header>
    <!-- 헤더 끝 -->
    
    <!-- 커뮤니티 시작 -->
	<ul>
	<% ContentDAO dao=new ContentDAO(); ArrayList<ArrayList<String>> list = dao.getContentList();%>
		<table border="1">
			<th>id</th>
			<th>제목</th>
			<th>지역</th>
<% 
	for(int i=0; i<list.size();i++){ 
		out.print("<tr>");
			for(int j=0; j<list.get(i).size();j++){
				if(j==2){
					j+=1;
				}
				out.print("<td>");
				out.print("<a href='/community/read.jsp?id="+list.get(i).get(0)+"'>");
				out.print(list.get(i).get(j));
				out.print("</a>");
				out.print("</td>");	
			}
		out.print("</tr>");
	}
%>							
		</table>
	</ul>
	<button type="button" class="btn btn-warning"><a href="./write.jsp">작성하기</a></button>	
	<!-- 커뮤니티 끝 -->	
	
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
</html>