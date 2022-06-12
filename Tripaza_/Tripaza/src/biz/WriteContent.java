package biz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ContentDAO;
import trip.MemberTrip;

/**
 * Servlet implementation class WriteContent
 */
@WebServlet("/WriteContent")
public class WriteContent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WriteContent() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8"); 
		
		boolean result = false;
		PrintWriter out = response.getWriter();
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		HttpSession session = request.getSession();
		String writter = (String)session.getAttribute("loginOK").toString();
		System.out.println(writter);
		ContentDAO dao = new ContentDAO();
		dao.addContent(title, content, 0, writter);
		out.println("<script> alert('작성이 완료되었습니다.'); </script>");
		response.sendRedirect("/community/board.jsp");
	}

}