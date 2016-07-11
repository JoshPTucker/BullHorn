package bhservlets;

import java.io.IOException;
import java.io.PrintWriter;


import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import customTools.PostsUtil;
import model.Bhpost;
import model.Bhuser;

/**
 * Servlet implementation class PostServlet
 */
@WebServlet("/PostServlet")
public class PostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 HttpSession session = request.getSession();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Bhuser user= (Bhuser) session.getAttribute("user");
	
		

		   DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		   //get current date time with Date()
		   Date date = new Date();
		   //System.out.println(dateFormat.format(date));
		Bhpost usrpost =new Bhpost();
		usrpost.setPosttext(request.getParameter("userpost"));
		usrpost.setBhuser(user);
			
		usrpost.setPostdate(date);
		//usrpost.setPostdate();
		String nextURL = "/home.jsp";
		PostsUtil.insert(usrpost);
		//String useremail = request.getParameter("")
		ArrayList<Bhpost> userposts=new ArrayList<Bhpost>();
		userposts.addAll(PostsUtil.postsofUser(user.getUseremail()));
		
		out.print(user.getUseremail());
		
		//String post = request.getParameter("userpost");
		session.setAttribute("userposts", userposts);
		
		  //redirect to next page as indicated by the value of the nextURL variable
        //getServletContext().getRequestDispatcher(nextURL).forward(request,response);
        response.sendRedirect(request.getContextPath() + nextURL);
	}

}
