<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tripaza-회원가입</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
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

/* 회원가입 페이지 시작 */

#join-container {
    margin: 0 auto;
    transform: translateY(40%);
    width: 50%;
    height: 600px;
    text-align: center;
    
}
#join-container > div > div.info-form > table {
    line-height: 80px;

}

#join-container .join .join-title h2 {
    margin-bottom: 50px;
    font-size: 2rem;
    font-weight: bold;
}
.join-input {
    width: 80%;
}
.join-input input {
    width: 100%;
    border-radius: 3px;
    border: 1px solid rgba(0, 0, 0, 0.322);
    padding: 20px;
    opacity: 0.5;
}
.join-input-di input{
    width: 41.5%;
    border-radius: 3px;
    border: 1px solid rgba(0, 0, 0, 0.322);
    padding: 20px;
    opacity: 0.5;
}
.join select {
    padding: 20px;
    opacity: 0.5;
    border-radius: 3px;
    border: 1px solid rgba(0, 0, 0, 0.322);
}
 
.submit button {
    padding: 20px;
    border: 1px solid #0151E5;
    width: 100%;
}

.ubmit button:nth-of-type(2) {
    margin-top: 10px;
    background-color: white;
    color: #5F00A1;
    font-size: 1rem;
}

.join-submit {
    background-color: white;
    margin-top: 10px;
    width: 50%;
    transition: all .3s;
}

.join-submit:hover {
    cursor: pointer;
    background-color: #0151E5;
    color: white;
}

.submit .login{
    padding-bottom: 50px;
    color: #0151E5;
}
#userGd {
    width: 100%;
}

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
                    	<li><a href="#">홈</a></li>
                    	<li><a href="#">나라 별 보기</a></li>
                    	<li><a href="#">커뮤니티</a></li>
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
    <section id="join-container">
        <div class="join">
            <div class="join-title">
                <h2> 회원가입 </h2>
            </div>
            <div class="info-form">
                <table>
                    <tr>

                        <td>아이디</td>
                        <td class="join-input"><input type="text" name="id" id="userId"></td>
                    </tr>
                    <tr>
                        <td>비밀번호</td>
                        <td class="join-input"><input type="password" name="pwd" id="userPwd"></td>

                    </tr>
                    <tr>
                        <td>비밀번호 재확인</td>
                        <td class="join-input"> <input type="password" name="pwdCk" id="pwdCk"></td>

                    </tr>
                    <tr>
                        <td>이름</td>
                        <td class="join-input"><input type="text" name="name" id="userName"></td>

                    </tr>
                    <tr>
                        <td>생년월일</td>
                        <td class="join-input-di"><input type="text" name="year" id="userDate" placeholder="년(4자)"><select name="year"
                                id="userDate">
                                <option value="" selected>월</option>
                                <option value="1월">1</option>
                                <option value="2월">2</option>
                                <option value="3월">3</option>
                                <option value="4월">4</option>
                                <option value="5월">5</option>
                                <option value="6월">6</option>
                                <option value="7월">7</option>
                                <option value="8월">8</option>
                                <option value="9월">9</option>
                                <option value="10월">10</option>
                                <option value="11월">11</option>
                                <option value="12월">12</option>
                            </select>
                            <input type="text" name="day" id="userDate" placeholder="일">
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td>성별</td>
                        <td class="join-input-gender"> <select name="gender" id="userGd">
                        <option value="" selected>성별</option>
                        <option value="male">남자</option>
                        <option value="female">여자</option>
                        <option value="none">선택 안함</option>
                    </select></td>
                    </tr>
                    <tr>
                        <td>휴대전화</td>
                        <td class="join-input"><input type="tel" name="tel" id="userTel" placeholder="전화번호 입력"></td>
                    </tr>
                </table>
                <div class="submit">
                    <a href="#"><button class="join-submit">가입하기</button></a> <br><br>
                    이미 계정이 있으신가요? -> <a href="http://127.0.0.1:5500/login.html#" class="login">로그인</a>
                </div>
            </div>
        </div>
    </section>
</body>
</html>