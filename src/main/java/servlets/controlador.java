package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class controlador
 */
public class controlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controlador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.addHeader("Content-Type", "text/html");		
        Cookie[]  cookies = request.getCookies();
        if (cookies != null) {
   	for (Cookie cookie : cookies) {
   		if ("numVisitas".equals(cookie.getName())) {
   			int visitas=Integer.parseInt(cookie.getValue());
   			cookie.setValue(String.valueOf((++visitas)));
                 	        cookie.setMaxAge(5);
   			response.addCookie(cookie);			
   		}
   		response.getWriter().append(cookie.getName()+":  "+cookie.getValue()+" , expira en (seg): "+cookie.getMaxAge()+"<br><br>"); 			
   	}
       } else {
   	int numVisitas=1;
   	Cookie contadorVisitas = new Cookie("numVisitas", String.valueOf(numVisitas));
   	contadorVisitas.setMaxAge(5);
   	response.addCookie(contadorVisitas);
   	response.getWriter().append("Non enviou cookies. É a primeira visita<br><br>"); 	
      }
   }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
