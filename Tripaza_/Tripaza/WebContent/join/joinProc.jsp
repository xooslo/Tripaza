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
	String id, pwd, pwdCk, nick, name, Bday, gender, tel;
	MemberTrip trip = new MemberTrip();
	int n = 0;
	
	System.out.println("--------------------3333");
	id = request.getParameter("id");
	pwd = request.getParameter("pwd");
	pwdCk = request.getParameter("pwdCk");
	nick = request.getParameter("nick");
	name = request.getParameter("name");
	Bday = request.getParameter("Bday");
	gender = request.getParameter("gender");
	tel = request.getParameter("tel");
	
	n = trip.insertMember(id, pwd, pwdCk, nick, name, Bday, gender, tel);
	
	System.out.println("--------------------4444");
	
	if(n > 0)
		response.sendRedirect("/login/login.jsp");
	else
		out.print("<script> history.back() </script>");
%>
</body>
</html>