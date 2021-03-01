package satish.kumar;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ReciptData
 */
@WebServlet("/ReciptData")
public class ReciptData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReciptData() {
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
		String b[]=new String[7];
		b[0]=request.getParameter("recipt");
		b[1]=request.getParameter("secdep");
		b[2]=request.getParameter("rent");
		b[3]=request.getParameter("sgst");
		b[4]=request.getParameter("cgst");
		b[5]=request.getParameter("total");
		b[6]=request.getParameter("subttl");
		HttpSession session = request.getSession();
        session.setAttribute("rcptdtl", b);
        //request.getRequestDispatcher("Payment.jsp").forward(request,response);
		doGet(request, response);
	}

}
