package satish.kumar;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import satish.kumar.MyDatabase;

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
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = request.getParameter("Luser");
		String pass = request.getParameter("Lpass");
		String pass1 = request.getParameter("Lpass1");
		if(pass1!=""&&pass1!=null){
			pass=pass1;
		}
		PrintWriter output = response.getWriter();
		MyDatabase mdb = new MyDatabase();
		String b[]=mdb.getUserDetails(user,pass);
		boolean result = mdb.auth(user, pass);
		// If result is true. Save username info in session
		if(result){
			HttpSession session = request.getSession();
			session.setAttribute("uname", user);
			session.setAttribute("logdtl",b);
			if(pass1!=""&&pass1!=null){
				output.println("<script type=\"text/javascript\">");
				output.println("alert('Login Succesfull');");
				output.println("location='Flats.jsp';");
				output.println("</script>");
			}else{
				output.println("<script type=\"text/javascript\">");
				output.println("alert('Login Succesfull');");
				output.println("location='index.jsp';");
				output.println("</script>");
			}
		}else{
			if(pass1!=""&&pass1!=null){
				output.println("<script type=\"text/javascript\">");
				output.println("alert('Wrong User Name & Password');");
				output.println("location='Flats.jsp';");
				output.println("</script>");
			}else{
				output.println("<script type=\"text/javascript\">");
				output.println("alert('Wrong User Name & Password');");
				output.println("location='index.jsp';");
				output.println("</script>");
			}
		}
	}
}
