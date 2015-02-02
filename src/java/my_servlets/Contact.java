package my_servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private final Map<String, String> actionMap = new HashMap<>();
        

	
	public Contact() { //whatever ?action=something we give map it to a jsp
			
		actionMap.put("Speak with colleague", "/reportProblem.jsp");
		actionMap.put("General question", "/help.jsp");
	}

	
        @Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	private void doForward(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// Get the action parameter
		String action = request.getParameter("action");
            

		// If the action parameter is null or the map doesn't contain
		// a page for this action, set the action to the home page
		if (action == null || !actionMap.containsKey(action))
			action = "/home";

		// Forward to the requested page.
		
              response.sendRedirect("." + actionMap.get(action));
	}

	
        @Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		doForward(request, response);

	}

	
        @Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
                        
		doForward(request, response);
                
	}

}
