package bhservlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import customTools.Gravatar;
import customTools.PostsUtil;
import customTools.User;
import model.Bhpost;

/**
 * Servlet implementation class Newsfeed
 */
@WebServlet("/Newsfeed")
public class Newsfeed extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Newsfeed() {
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
	
		response.setContentType("text/html");
		//PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		
		ArrayList<Bhpost> posts=new ArrayList<Bhpost>();
	//	long userid=(long) session.getAttribute("user");
		posts.addAll(PostsUtil.bhPost());
//		ArrayList<Gravatar>gravatars=new ArrayList<Gravatar>();
//		
//		for ( Bhpost p:posts){
//			Gravatar g = new Gravatar();
//			g.setGravatarPost(p, 80);
//			gravatars.add(g);
//		}
		String nextURL = "/newsfeed.jsp";
		
	//	long userid=(long) session.getAttribute("user");
		
		//session.setAttribute("gravatars", gravatars);
		 session.setAttribute("posts", posts);
		//request.setAttribute("posts", posts);
		//request.getRequestDispatcher(nextURL).forward(request,response);
		getServletContext().getRequestDispatcher(nextURL).forward(request,response);
	}

}
