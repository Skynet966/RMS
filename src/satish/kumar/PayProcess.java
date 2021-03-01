package satish.kumar;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PayProcess
 */
@WebServlet("/PayProcess")
public class PayProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayProcess() {
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
		a[0]=request.getParameter("CheckIn");
		a[2]=request.getParameter("RName");
		a[3]=request.getParameter("RMail");
		a[4]=request.getParameter("RMonths");
		a[5]=request.getParameter("RPhone");
		a[6]=request.getParameter("RDN");
		a[7]=request.getParameter("RId");
		a[8]=request.getParameter("Fid");
		//a[9]=request.getParameter("Aid");
		String loginchk=(String) request.getSession(false).getAttribute("uname");
		if(loginchk!=null&&loginchk!=""){
			boolean rst=true;
			for(int i=1;i<9;i++){
				if(a[i]==""){
					rst=false;
				}
			}
			if(rst){
				HttpSession session = request.getSession();
				session.setAttribute("paydtl", a);
				request.getRequestDispatcher("Recipt.jsp").forward(request,response);
			}else{
				request.getRequestDispatcher("Details.jsp").forward(request,response);
			}
		}else{
			request.getRequestDispatcher("Details.jsp").forward(request,response);
		}
		doGet(request, response);
	}
}
