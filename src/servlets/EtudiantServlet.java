package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Etudiant;

import Method.EtudiantMeth;


/**
 * Servlet implementation class EtudiantServlet
 */
@WebServlet({ "/Etudiant/ajout", "/Etudiant/list", "/Etudiant/delete", "/Etudiant/update", "/Etudiant/recherche", "/Etudiant/home" })
public class EtudiantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EtudiantServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath();
		request.setCharacterEncoding("utf-8");
		switch(path){
		case "/Etudiant/ajout":
			
			this.getServletContext().getRequestDispatcher("/WEB-INF/ajout.jsp").forward(request,response);
			
			break;
			
			
		case "/Etudiant/list":
			EtudiantMeth tableNoms = new EtudiantMeth();
			request.setAttribute("etudiants", tableNoms.recupererEtudiant());
			
			this.getServletContext().getRequestDispatcher("/WEB-INF/list.jsp").forward(request,response);
			break;
		
		case "/Etudiant/delete":	
			this.getServletContext().getRequestDispatcher("/WEB-INF/delete.jsp").forward(request,response);
			
			break;
			
		case "/Etudiant/update":
			
		
			this.getServletContext().getRequestDispatcher("/WEB-INF/update.jsp").forward(request, response);
			
			break;
			
		case "/Etudiant/recherche":
			this.getServletContext().getRequestDispatcher("/WEB-INF/recherche.jsp").forward(request,response);
			break;
			
	
		}

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom                    =  request.getParameter("nom");
		String prenom                 =  request.getParameter("prenom");
		String email                  =  request.getParameter("email");
		String dateNaissance             =  request.getParameter("dateNaissance ");
		String region              =  request.getParameter("region");
		String TypeBac              =  request.getParameter("TypeBac");
		String path                   =  request.getServletPath();
		
		
		switch (path) 
		{
		case "/Etudiant/ajout":
			Etudiant etudiant= new Etudiant();
			etudiant.setCNE(Integer.valueOf(request.getParameter("CNE")));
			etudiant.setNom(request.getParameter("nom"));
			etudiant.setPrenom(request.getParameter("prenom"));
			etudiant.setEmail(request.getParameter("email"));
			etudiant.setdateNaissance(request.getParameter("dateNaissance"));
			etudiant.setRegion(request.getParameter("region"));
			etudiant.setTypeBac(request.getParameter("TypeBac"));
			
			EtudiantMeth tableNoms = new EtudiantMeth();
			tableNoms.ajouterUtilisateur(etudiant );
			this.getServletContext().getRequestDispatcher("/WEB-INF/ajout.jsp").forward(request,response);
			break;
			
			
		case "/Etudiant/list":
			EtudiantMeth tableNoms1 = new EtudiantMeth();
			request.setAttribute("etudiants", tableNoms1.recupererEtudiant());
			this.getServletContext().getRequestDispatcher("/WEB-INF/list.jsp").forward(request,response);
		break;
		
		 case "/Etudiant/delete":
			 Etudiant etudiant1 = new Etudiant();
				int CNE = Integer.parseInt(request.getParameter("CNE"));
				EtudiantMeth.delete(CNE);	
				this.getServletContext().getRequestDispatcher("/WEB-INF/delete.jsp").forward(request,response);
			break;	
		
	  case "/Etudiant/update":
		 
			int CNE1 = Integer.parseInt(request.getParameter("CNE"));
		  Etudiant etu= new Etudiant();
			etu.setCNE(Integer.valueOf(request.getParameter("CNE")));
			etu.setNom(request.getParameter("nom"));
			etu.setPrenom(request.getParameter("prenom"));
			etu.setEmail(request.getParameter("email"));
			etu.setdateNaissance(request.getParameter("dateNaissance"));
			etu.setRegion(request.getParameter("region"));
			etu.setTypeBac(request.getParameter("TypeBac"));
			EtudiantMeth.update(etu);
		 
		  this.getServletContext().getRequestDispatcher("/WEB-INF/update.jsp").forward(request, response);
		  
			break;
			
			
	  case "/Etudiant/recherche":
		  Etudiant  etudiant11 = new Etudiant();
			int CNE11 = Integer.parseInt(request.getParameter("CNE"));
			
			EtudiantMeth tableNoms11 = new EtudiantMeth();
			
			
			request.setAttribute("etudiantss", EtudiantMeth.rech(CNE11));
			this.getServletContext().getRequestDispatcher("/WEB-INF/recherche.jsp").forward(request,response);
			
			break;
			
	 
		
		}	
		
		
	}

}
