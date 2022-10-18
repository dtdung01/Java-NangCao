package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.loaibean;
import bean.sachbean;
import bo.loaibo;
import bo.sachbo;
import dao.sachdao;

/**
 * Servlet implementation class htsach_Controller
 */
@WebServlet("/htsach_Controller")
public class htsach_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public htsach_Controller() {
		super();
		// TODO Auto-generated constructor stub
		//.....
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	// mvc => model view controller model => bean or entities controler => service  => dao
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String key = request.getParameter("txttk");
		String ml = request.getParameter("ml");
		
		loaibo lbo = new loaibo();
		ArrayList<loaibean> dsloai = lbo.getloai();
		request.setAttribute("dsloai", dsloai);

		sachbo sbo = new sachbo();
		ArrayList<sachbean> dssach = sbo.getsach();
		
		if (ml != null) {
			dssach = sbo.TimMa(ml);			
		}
		else if (key != null) {
			dssach = sbo.Tim(key);			
		}
		else {
			dssach = sbo.getsach();
		}
		request.setAttribute("dssach", dssach);

		RequestDispatcher rd = request.getRequestDispatcher("htsach.jsp");
		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
