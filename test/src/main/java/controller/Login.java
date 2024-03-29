package controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import DAO.AccountDAO;
import model.Account;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Lấy giữ liệu từ trang HTML
		String accountID = request.getParameter("accountID");
		String accountPassword = request.getParameter("accountPassword");
		
		Account account_data = new Account();
		account_data.setAccountID(accountID);
		account_data.setAccountPassword(accountPassword);
		
		AccountDAO ad = new AccountDAO();
		Account account = ad.selectByUsernameAndPassWord(account_data);		
		String url = "";
		if(account !=null) {
			String level = account.getAcconutLevel();
			if(level.equals("manager")) {
				url = "/manager.jsp";
			}
			if(level.equals("employee")) {
				url = "/staff.jsp";
			}
		}else {
			request.setAttribute("baoLoi", "Thông tin đăng nhập không chính xác");
			url = "/index.jsp";
		}
		
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
