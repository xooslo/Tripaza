<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="dao.ContentDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	
	<section id="post">
            <div class="post-wrap">
                <div class="post-inf">
                    <div class="post-tit">
                    	<% out.print("<h3>"+title+"</h3>"); %>
                    </div>
                    <div class="topinfo">
                        <% out.print("<p>"+country+"</p>"); %>
                        <% out.print("<p>"+writter+"</p>"); %>
                    </div>
                </div>
                <hr>
                <div class="post-contents">
                    <% out.print("<p>"+content+"</p>"); %>
                </div>

                    <button type="button" class="btn btn-warning"><a href="./board.jsp">목록으로 돌아가기</a></button>

                    <button type="button" class="btn btn-warning"><a href="./delete.jsp?id=<%= id %>&writter=<%= writter %>">삭제하기</a></button>
                    <button type="button" class="btn btn-warning"><a href="./edit.jsp?id=<%= id %>&writter=<%= writter %>">수정하기</a></button>
            </div>
	
	
</body>
</html>