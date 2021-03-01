package satish.kumar;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FinalSave
 */
@WebServlet("/FinalSave")
public class FinalSave extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FinalSave() {
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
		String b[]=new String[6];
		a[0]=request.getParameter("a1");
		a[1]=request.getParameter("a2");
		a[2]=request.getParameter("a3");
		a[3]=request.getParameter("a4");
		a[4]=request.getParameter("a5");
		a[5]=request.getParameter("a6");
		a[6]=request.getParameter("a7");
		a[7]=request.getParameter("a8");
		a[8]=request.getParameter("a9");
		a[9]=request.getParameter("a10");
		
		b[0]=request.getParameter("b1");
		b[1]=request.getParameter("b2");
		b[2]=request.getParameter("b3");
		b[3]=request.getParameter("b4");
		b[4]=request.getParameter("b5");
		b[5]=request.getParameter("b6");
		
		MyDatabase mdb=new MyDatabase();
		boolean r1=mdb.putRenter(a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9]);
		
		boolean r2=mdb.reciptsave(b[0], b[1], b[2], b[3], b[4], b[5]);
		
		boolean r3=mdb.updaterecipt(b[0]);
		
		if(r1&&r2&&r3){
			boolean r4=mdb.flatatus(a[8]);
			if(r4){
				request.getRequestDispatcher("Gateway.jsp").forward(request,response);
			}
		}
		doGet(request, response);
	}

}
