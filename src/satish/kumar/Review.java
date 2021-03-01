package satish.kumar;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Review
 */
@WebServlet("/Review")
public class Review extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Review() {
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
		String a1= request.getParameter("RMsg");
		String a2= request.getParameter("Revname");
		String a3= request.getParameter("Revid");
		PrintWriter output = response.getWriter();
		MyDatabase mdb=new MyDatabase();
		boolean rslt=mdb.setreviw(a1,a2,a3);
		if(rslt){
			output.println("<script type=\"text/javascript\">");
			output.println("alert('Your Review Posted Sucessfully');");
			output.println("location='Details.jsp';");
			output.println("</script>");
		}else{
			output.println("<script type=\"text/javascript\">");
			output.println("alert('Failed to Post Your Review');");
			output.println("location='Details.jsp';");
			output.println("</script>");
		}
		doGet(request, response);
	}

}
