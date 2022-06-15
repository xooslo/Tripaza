 <%@page import="dao.MemberDAO"%>
<%@page import="trip.MemberTrip"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id, pwd, pwdCk, nick, name, gender, tel;
	MemberDAO dao = new MemberDAO();
	int n = 0;

	id = request.getParameter("id");
	pwd = request.getParameter("pwd");
	pwdCk = request.getParameter("pwdCk");
	nick = request.getParameter("nick");
	name = request.getParameter("name");
	gender = request.getParameter("gender");
	tel = request.getParameter("tel");
	
	if(pwd.equals(pwdCk)){
		n = dao.insertMember(id, pwd, pwdCk, nick, name, gender, tel);
	} else {
		out.println("<script> alert('비밀번호가 일치하지 않습니다.'); history.back(); </script>");
	}
	
	if(n > 0)
		response.sendRedirect("http://localhost:8090/login/login.jsp");
	else 
		out.print("<script> history.back() </script>");
%>
</body>
</html>