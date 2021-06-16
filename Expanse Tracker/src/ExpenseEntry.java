

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
 * Servlet implementation class ExpenseEntry
 */
@WebServlet("/ExpenseEntry")
public class ExpenseEntry extends HttpServlet{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExpenseEntry() {
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
		String ef = request.getParameter("efield");
        String em = request.getParameter("eamt");
		String ed = request.getParameter("edate");
        String edes = request.getParameter("edes");
        String ema = request.getParameter("email");   
//        
//        String ema=(String)session.getAttribute("uemail");  
//        //out.print("Hello "+email);  
          
        
        //String ema = request.getParameter("uemail");
        
        try {
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Expanse","root","1234");
        	Statement statement = conn.createStatement();
        	statement.executeUpdate("INSERT INTO userentry VALUES('"+ema+"','"+ef+"','"+em+"','"+ed+"','"+edes+"')");
        	response.sendRedirect("Home.jsp");
        	statement.close();
        	conn.close();
        }catch(SQLException e) {
        	System.out.println("Something went wrong :" + e.getMessage());
        }catch(Exception e) {
        	
        }
	}
}

	


