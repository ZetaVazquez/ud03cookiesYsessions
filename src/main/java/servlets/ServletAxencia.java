package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

/**
 * Servlet implementation class ServletAxencia
 */
public class ServletAxencia extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger logger=Logger.getLogger(ServletAxencia.class.getName());
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAxencia() {
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
		// recolle cidade_favorita
		String cidade_favorita= request.getParameter("cidade_favorita");
		logger.info(cidade_favorita);
		if (cidade_favorita != null && !cidade_favorita.isEmpty()) {
			// NOTA: na especificación orixinal non se permiten caracteres de coma, punto e coma e espazo na cookie
			// Se queremos usalos, podemos codificala e decodificala no destino; pero necesitaríamos scriptlets
			// ou facelo nun controlador; non en JSTL+EL
			//  cidade_favorita = URLEncoder.encode(cidade_favorita);
			// crear a cookie. Nome por convencion: web_site_theme.cookie_name
			Cookie cookie = new Cookie("axencia_viaxes_conServlet.cidade_favorita", cidade_favorita);
			// configurar vida da cookie
			cookie.setMaxAge(365*24*60*60); // un ano de vida
			// enviar a usuario
			response.addCookie(cookie);
		}
		// manda redirect para que browser envíe cookie recibida a axencia_viaxes.jsp
		response.sendRedirect(request.getContextPath()+"/ejemplos/axencia_viaxes_conServlet.jsp");
	}

}
