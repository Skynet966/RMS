package satish.kumar;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class APformInput
 */
@WebServlet("/APformInput")
public class APformInput extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public APformInput() {
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
		String a[]=new String[10];
		a[0]  = request.getParameter("Aname");
		a[1]  = request.getParameter("Aprice");
		a[2]  = request.getParameter("Atype");
		a[3]  = request.getParameter("Adrs");
		a[4]  = request.getParameter("Aloc");
		a[5]  = request.getParameter("pic1");
		a[6]  = request.getParameter("pic2");
		a[7]  = request.getParameter("pic3");
		a[8]  = request.getParameter("pic4");
		a[9]  = request.getParameter("Atext");
		PrintWriter output = response.getWriter();
		MyDatabase mdb=new MyDatabase();
		boolean res=mdb.DataInsert(a);
		if(res){
			output.println("<script type=\"text/javascript\">");
			output.println("alert('Record Inserted');");
			output.println("location='index.jsp';");
			output.println("</script>");
		}else{
			output.println("<script type=\"text/javascript\">");
			output.println("alert('Insertion Fail');");
			output.println("location='APform.jsp';");
			output.println("</script>");
		}
		//doGet(request, response);
	}

}
