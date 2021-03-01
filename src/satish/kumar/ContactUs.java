package satish.kumar;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContactUs
 */
@WebServlet("/ContactUs")
public class ContactUs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactUs() {
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
		final String subject="Thank you for getting in touch!";
		final String msg="We have received your message and would like to thank you for writing to us. If your inquiry is urgent,"
				+ " please use the telephone number listed below to talk to one of our staff members. Otherwise, we will"
				+ " reply by email as soon as possible."
				+ "\nTalk to you soon,"
				+ "\n\nSNAP Rental Services            \nPhone No:+919540473811          \nEmail ID: snapcareaboutyou@gmail.com";
		response.setContentType("text/jsp");
		String name=request.getParameter("cname");
		String mail=request.getParameter("cmail");
		String phno=request.getParameter("cphno");
		String mseg=request.getParameter("cmsg");
		String mseg1=request.getParameter("cmsg1");
		String to=mail;
		if(mseg1!=""&&mseg1!=null){
			mseg=mseg1;
		}
		PrintWriter output = response.getWriter();
			MyDatabase mdb=new MyDatabase();
			boolean result=mdb.feedback(name, mail, phno, mseg);
			if(result){
				if(mseg1!=""&&mseg1!=null){
					Mailer.send(to, subject, msg);
					response.sendRedirect("Details.jsp");
				}else{
					Mailer.send(to, subject, msg);
					response.sendRedirect("index.jsp");
				}
			}else{
				if(mseg1!=""&&mseg1!=null){
					output.println("<script type=\"text/javascript\">");
					output.println("alert('Your Message Sent Fail');");
					output.println("location='Details.jsp';");
					output.println("</script>");
				}else{
					output.println("<script type=\"text/javascript\">");
					output.println("alert('Your Message Sent Fail');");
					output.println("location='index.jsp';");
					output.println("</script>");
				}
			}
		}
	}
