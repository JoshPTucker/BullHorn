package bhservlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import customTools.User;
import model.Bhuser;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
        //this page does not require user to be logged in
        String useremail = request.getParameter("email");
        String userpassword = request.getParameter("password");
        String action = request.getParameter("action");
        //String remember = request.getParameter("remember");
        String nextURL = "/error.jsp";
        
        //get an instance of the session so we can set attributes to it
        //the JSP and NavBar will read from the session 
        //The session is one of the primary ways we maintain state
        //in an otherwise stateless web application
        HttpSession session = request.getSession();
        
        //create a variable to hold our user. The variable must be defined
        //so it is visible to all code within the method. So define it here
        //but set it to null since we don't have a user yet.
        Bhuser user = null;
        //create an instance of the user and put it in the session
        //only add the user to the session if the user if valid.
        //The presence of the user is used to determine who 
        //owns the site and will be used to connect to the database
        action="login";
        if (action.equals("logout")){
            session.invalidate();
            nextURL = "/login.html";
            
        }else{
            user = User.getUserByEmail(useremail);
            if (User.isValidUser(user)){
                session.setAttribute("user", user);
                
                int size = 100;
                String gravatarURL = User.getGravatarURL("jptucker2009@gmail.com", size);
               //  System.out.println(gravatarURL);
                session.setAttribute("gravatarURL", gravatarURL);
                nextURL = "/home.jsp";
            }else{
                nextURL = "/createaccount.jsp";
            }
            
        }
        //redirect to next page as indicated by the value of the nextURL variable
        //getServletContext().getRequestDispatcher(nextURL).forward(request,response);
        response.sendRedirect(request.getContextPath() + nextURL);
    }
	}


