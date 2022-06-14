<%@page import="dao.ContentDAO"%>
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
	out.print(
			"<script>if(confirm('정말로 게시글을 삭제하시겠습니까?')){    }else{        window.location.href = '/board.jsp';    }</script>");

	String id = request.getParameter("id");
	ContentDAO dao = new ContentDAO();

	String writter = dao.readWritter(id).toString();
	
	String id2 = (String)session.getAttribute("loginOK");

	if(writter.equals(id2)){
		dao.deleteContent(id);
		out.print("<script>alert('삭제가 완료되었습니다.');window.location.href = 'http://localhost:8090/community/board.jsp';</script>");
	}else{
		out.print("<script>alert('게시글은 작성자 본인만 삭제할 수 있습니다.');history.back();");
	}
	
	
	%>
</body>
</html>