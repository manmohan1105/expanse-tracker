import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class LoginAccount
 */
@WebServlet("/LoginAccount")
public class LoginAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAccount() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		 
		
        String em = request.getParameter("uemail");
        String pw = request.getParameter("upassword");
        try {
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Expanse","root","1234");
        	Statement statement = conn.createStatement();
        	ResultSet rs = statement.executeQuery("select * from userdata where uemail='"+em+"'");
        	response.setContentType("text/html");  
   	       // PrintWriter out = response.getWriter();
        	HttpSession session=request.getSession();  
            session.setAttribute("uemail",em);  
        	if(rs.next()) {
        		if(rs.getString(4).equals(pw)) {
        			
        			response.sendRedirect("Home.jsp");
        		}
        		else {
        	      response.sendRedirect("error.html");
        				}
        	}
        	else {
        		response.sendRedirect("error.html");
        	}
        	statement.close();
        	conn.close();
        }catch(SQLException e) {
        	System.out.println("Something went wrong :" + e.getMessage());
        }catch(Exception e) {
        	
        }
       
	}
	
}
