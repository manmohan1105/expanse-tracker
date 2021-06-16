

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CreateAccount
 */
@WebServlet("/CreateAccount")
public class CreateAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public CreateAccount() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String un = request.getParameter("uname");
        String em = request.getParameter("uemail");
		String co = request.getParameter("ucontactno");
        String pw = request.getParameter("upassword");
        String cpw = request.getParameter("ucpassword");
        
        try {
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Expanse","root","1234");
        	Statement statement = conn.createStatement();
        	statement.executeUpdate("INSERT INTO userdata VALUES('"+un+"','"+em+"','"+co+"','"+pw+"','"+cpw+"')");
        	response.sendRedirect("Index.jsp");
        	statement.close();
        	conn.close();
        }catch(SQLException e) {
        	System.out.println("Something went wrong :" + e.getMessage());
        }catch(Exception e) {
        	
        }
	}

}
