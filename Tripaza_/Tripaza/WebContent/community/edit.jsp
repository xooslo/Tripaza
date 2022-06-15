<%@page import="dao.ContentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정</title>
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
.header-title {
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

.header-title a {
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
.header-title > .title-logo > .sidebar > h2 {
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

#write-container {
	font-family: 'Happiness-Sans-Regular';
    margin: 0 auto;
    transform: translateY(40%);
    width: 50%;
    height: 500px;
    text-align: center;
    
}

#write-container > .write > .write-form > table {
    line-height: 80px;

}

#write-container .write .write-title h1 {
    margin-bottom: 50px;
    font-size: 2rem;
    font-weight: bold;
}

#title {
    margin-bottom: 20px;
    width: 450px;
    height: 30px;
}

#country{
	margin-bottom: 10px;
    width: 450px;
    height: 30px;
}

.btn-submit {
    padding: 20px;
    border: 1px solid #0151E5;
    width: 80%;
}

.btn-submit:nth-of-type(2) {
    margin-top: 10px;
    background-color: white;
    color: #5F00A1;
    font-size: 1rem;
}

.btn-submit {
	font-family: 'Happiness-Sans-Regular';
    background-color: #0151E5;
    margin-top: 10px;
    width: 20%;
    color: white;
    margin-bottom: 50px;
}

.btn-submit:hover {
    cursor: pointer;
    background-color: #224499;
    color: white;
}

.btn-reset {
	font-family: 'Happiness-Sans-Regular';
    padding: 20px;
    border: 1px solid #0151E5;
    width: 80%;
}

.btn-reset:nth-of-type(2) {
    margin-top: 10px;
    background-color: white;
    color: #5F00A1;
    font-size: 1rem;
}

.btn-reset {
    background-color: white;
    margin-top: 10px;
    width: 20%;
    transition: all .3s;
}

.btn-reset:hover {
    cursor: pointer;
    border: 1px solid #e6e6fa;
    background-color: #e6e6fa;
}

#content{
	font-family: 'Happiness-Sans-Regular';
}

</style>
</head>
<body>
<%
		String id = request.getParameter("id");
		ContentDAO dao = new ContentDAO();
		String content = "";
		String title = dao.readTitle(id);
		content = dao.readContent(id);
		String country = dao.readCountry(id);
		String writter = dao.readWritter(id);
	%>

	<!-- 헤더 시작 -->
    <header>
        <ul class="header-title">
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
                        <li><a href="http://localhost:8090/index-after.jsp">홈</a></li><br>
                        <li><a href="http://localhost:8090/map-after.jsp">나라 별 보기</a></li><br>
                        <li><a href="http://localhost:8090/community/board.jsp">커뮤니티</a></li><br>
                        <li><a href="http://localhost:8090/user/user.jsp">개인</a></li><br>
                    </div>
                </div>
                <a href="http://localhost:8090/index-after.jsp">
                    <h1>Tripaza</h1>
                </a>
            </div>
                <form action="/logout" method="get">
                	<div class="title-login">
                    	<li><a href="http://localhost:8090/index.jsp">로그아웃</a></li>
                	</div>
                </form>
        </ul>
    </header>
    <!-- 헤더 끝 -->

	<section id="write-container">
		<div class="write">
			<form action="/EditContent" method="get">
				<input type="hidden" name="id" id="id" value = "<%= id %>">
				
				<div class="write-title">
					<h1>글 수정하기</h1>
				</div>
				<div class="write-form">
					<table>
						<tr>
							<td><select name="country" id="country">
									<option value="" selected>나라 선택</option>
									<option value="한국">한국</option>
									<option value="일본">일본</option>
									<option value="미국">미국</option>
									<option value="프랑스">프랑스</option>
								</select>
							</td>
						</tr>
						<tr>
							<td><input type="text" name="title" id="title" placeholder="제목 입력" value = "<%= title %>"></td>
						</tr>
						<tr>
							<td><textarea name="content" id="content" cols="63" rows="20" placeholder="내용 입력"><%= content %></textarea></td>
						</tr>
					</table>
					<input type="submit" value="등록하기" class="btn-submit">
                	<a href="./board.php"><input type="button" href="./board.php" value="등록 취소" class="btn-reset"></a>
				</div>
			</form>
		</div>
	</section>
</body>
</html>