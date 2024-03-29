package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import model.Order;
import DAO.OrderDAO;

/**
 * Servlet implementation class FindOrder
 */
@WebServlet("/FindOrder")
public class FindOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String OID = "All";
		if( request.getParameter("search")!= null && ! request.getParameter("search").isEmpty()) {
			OID = request.getParameter("search");
		}
		
		OrderDAO dao= new OrderDAO();
		ArrayList<Order > list = new ArrayList<Order >();
		if(OID.equals("All") ) {
			list = dao.selectAll();
		}
		else {
			Order o = dao.selectById(OID);
				if( o != null ) 	
					list.add(o); 
		}	

		request.setAttribute("listO", list);
		request.getRequestDispatcher("staff.jsp").forward(request, response);
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
