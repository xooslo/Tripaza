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

/**
 * Servlet implementation class EditContent
 */
@WebServlet("/EditContent")
public class EditContent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditContent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8"); 
		
		boolean result = false;
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		HttpSession session = request.getSession();

		ContentDAO dao = new ContentDAO();
		dao.updateContent(id,title, content);
		out.println("<script> alert('수정이 완료되었습니다.'); </script>");
		response.sendRedirect("/community/board.jsp");
	}


}
