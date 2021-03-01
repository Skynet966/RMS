package satish.kumar;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChangePassword
 */
@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePassword() {
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
		String Oldpass = request.getParameter("Opass");
		String Newpass = request.getParameter("Npass");
		String Cpass = request.getParameter("Cpass");
		PrintWriter output = response.getWriter();
		if(Cpass.matches(Newpass)){
			MyDatabase mdb = new MyDatabase();
			boolean rs=mdb.chngpass(Newpass,Oldpass);
			if(rs){
				output.println("<script type=\"text/javascript\">");
				output.println("alert('Password Change Sucessfully');");
				output.println("location='index.jsp';");
				output.println("</script>");
			}else{
				output.println("<script type=\"text/javascript\">");
				output.println("alert('Wrong Entred Old Password');");
				output.println("location='index.jsp';");
				output.println("</script>");
			}
		}else{
			output.println("<script type=\"text/javascript\">");
			output.println("alert('New Password & Confirm Password Not Match');");
			output.println("location='index.jsp';");
			output.println("</script>");
		}
		doGet(request, response);
	}

}
