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
	String userId, userPwd, userNick, userName, userDate, userGd, userTel;
	MemberTrip trip = new MemberTrip();
	int n = 0;
	
	userId = request.getParameter("userId");
	userPwd = request.getParameter("userPwd");
	userNick = request.getParameter("userNick");
	userName = request.getParameter("userName");
	userDate = request.getParameter("userDate");
	userGd = request.getParameter("userGd");
	userTel = request.getParameter("userTel");
	
	n = trip.insertMember(userId, userPwd, userNick, userName, userDate, userGd, userTel);
	
	if(n > 0)
		response.sendRedirect("/login/login.jsp");
	else
		out.print("<script> history.back() </script>");
%>
</body>
</html>