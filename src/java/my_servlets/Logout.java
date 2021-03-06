/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package my_servlets;
/*
 import java.io.IOException;  
 import java.io.PrintWriter;  
  
 import javax.servlet.ServletException;  
 import javax.servlet.http.HttpServlet;  
 import javax.servlet.http.HttpServletRequest;  
 import javax.servlet.http.HttpServletResponse;  
 import javax.servlet.http.HttpSession;  
 import javax.swing.JOptionPane;
 import static javax.swing.JOptionPane.showMessageDialog;
 public class LogoutServlet extends HttpServlet {  
 protected void doGet(HttpServletRequest request, HttpServletResponse response)  
 throws ServletException, IOException {  
 response.setContentType("text/html");  
 PrintWriter out=response.getWriter();  
              
 request.getRequestDispatcher("index.jsp").include(request, response);  
              
 HttpSession session=request.getSession();  
 session.invalidate(); 
            
 showMessageDialog(null, "You are sucessfuly logged out.");
 //out.print("You are successfully logged out!");  
              
 out.close();  
 }  
 }  
 */
import static java.lang.System.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;
import static javax.swing.JOptionPane.showMessageDialog;

/**
 * Servlet implementation class logout
 */
public class Logout extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logout() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        out.println("hello");
        response.setContentType("text/html");
        Cookie loginCookie = null;
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("Username")) {
                    loginCookie = cookie;
                    break;
                }
            }
        }
        //invalidate the session if exists
        HttpSession session = request.getSession(false);
        //System.out.println("User="+session.getAttribute("user"));
        if (session != null) {           
            session.invalidate();
        }
        if(loginCookie != null){
            loginCookie.setMaxAge(0);
            response.addCookie(loginCookie);
        }
          RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
          rd.forward(request,response);    
    }
}
