package servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;

import Classes.GeneradorAzar;

/**
 * Servlet implementation class NinjaOro
 */
public class NinjaOro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NinjaOro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession miSesion = request.getSession();
		String oro = (String) miSesion.getAttribute("oro");
		ArrayList mensajes= (ArrayList) miSesion.getAttribute("mensajes");
		
		
		//Si es que es la primera vez que accedemos a oro, lo debemos inicializar en "0"
		
		if(oro==null) {
			miSesion.setAttribute("oro", "0");
		}
		
		if (mensajes == null) {
			miSesion.setAttribute("mensajes", new ArrayList<String>());
		}
		
		RequestDispatcher vista = request.getRequestDispatcher("WEB-INF/ninja_oro.jsp");
		vista.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession miSesion = request.getSession();
		String lugar = request.getParameter("lugar");
		int nuevosOros =GeneradorAzar.generarOros(lugar);
		int viejosOros = Integer.parseInt((String)miSesion.getAttribute("oro"));
		ArrayList <String> mensajes =(ArrayList<String>) miSesion.getAttribute("mensajes");
		
		int sumadosOros= viejosOros+nuevosOros;
		
		miSesion.setAttribute("oro", sumadosOros +"");
		
		mensajes.add("Ha generado:" + nuevosOros + " Oro en " + lugar);
		
		miSesion.setAttribute("mensajes", mensajes);
		
		response.sendRedirect("/Game/NinjaOro");
	}

}
