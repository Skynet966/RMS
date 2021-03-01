package satish.kumar;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import satish.kumar.MyDatabase;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		String user = request.getParameter("Suser");
		String pass = request.getParameter("Spass");
		String pass1 = request.getParameter("Sconf");
		String pno = request.getParameter("Spno");
		String mail= request.getParameter("Smail");
		PrintWriter output = response.getWriter();
		if(pass1.matches(pass)){
			MyDatabase mdb = new MyDatabase();
			boolean result = mdb.save(user, pass, mail, pno);
			if(result){
				output.println("<script type=\"text/javascript\">");
				output.println("alert('SignUP Sucessfull');");
				output.println("location='index.jsp';");
				output.println("</script>");
			}else{
				output.println("<script type=\"text/javascript\">");
				output.println("alert('SignUP Fail');");
				output.println("location='index.jsp';");
				output.println("</script>");
			}
		}else{
			output.println("<script type=\"text/javascript\">");
			output.println("alert('Your PassWord Not Match With Confirm Password');");
			output.println("location='index.jsp';");
			output.println("</script>");
		}
	}
}
