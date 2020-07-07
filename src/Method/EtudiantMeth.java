package Method;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Dao.Etudiant;
import Exception.DaoException;



public class EtudiantMeth {
	private static final Connection  connexion  =  ConnectionManager.getInstance();
	
	public List<Etudiant>recupererEtudiant() throws DaoException {
		List<Etudiant> etudiants = new ArrayList<Etudiant>();
		//chargement du driver
		try {
			
		Statement statement = connexion.createStatement();
			//exÈcution de la requÍte
		ResultSet resultat = statement.executeQuery("SELECT CNE,nom,prenom,email,dateNaissance,region,TypeBac FROM Etudiant;") ;
			//RÈcupÈration des donnÈes
			while(resultat.next()) {
				int CNE=resultat.getInt("CNE");
				String nom = resultat.getString("nom");
				String prenom = resultat.getString("prenom");
				String email = resultat.getString("email");
				String dateNaissance = resultat.getString("dateNaissance");
				String region = resultat.getString("region");
				String TypeBac = resultat.getString("TypeBac");
			
				Etudiant e= new Etudiant();
				e.setCNE(CNE);	
			    e.setNom(nom);
				e.setPrenom(prenom);
				e.setEmail(email);
				e.setdateNaissance(dateNaissance);
				e.setRegion(region);
				e. setTypeBac(TypeBac);
				etudiants.add(e);
				
				
			}
	
		return etudiants;
	}
		catch(SQLException e)
		{
			throw new DaoException("Erreur d'excution de la requete",e);
		}
	}
	
	public void ajouterUtilisateur(Etudiant e)throws DaoException {
		
		PreparedStatement preparedStatement;
		try {
			preparedStatement = (PreparedStatement) connexion.prepareStatement("INSERT INTO Etudiant(CNE,nom,prenom,email,dateNaissance,region,TypeBac) VALUES (?,?,?,?,?,?,?);");
		
					preparedStatement.setInt(1, e.getCNE());
					preparedStatement.setString(2, e.getNom());
					preparedStatement.setString(3, e.getPrenom());
					preparedStatement.setString(4, e.getEmail());
					preparedStatement.setString(5, e.getdateNaissance());
					preparedStatement.setString(6, e.getRegion());
					preparedStatement.setString(7, e.getTypeBac());
					preparedStatement.executeUpdate();
	}
		catch (SQLException e1) 
		{
			throw new DaoException("Erreur d'excution de la requete", e1);
		}

}
	public static void delete(int CNE) throws DaoException {
		
		
		PreparedStatement prepare;
		try {
		prepare = (PreparedStatement) connexion.prepareStatement("DELETE FROM Etudiant WHERE CNE = ?");
			prepare.setInt(1, CNE);
			
			prepare.executeUpdate();
		}
		catch(SQLException e)
		{
			throw new DaoException("Erreur d'exÈcution de la requete", e);
		}
	}
	public static   List<Etudiant> rech(int CNE) {
		List<Etudiant> etudiantss = new ArrayList<Etudiant>();
		PreparedStatement stmt;
		try {
			stmt = (PreparedStatement) connexion.prepareStatement("SELECT * FROM Etudiant WHERE CNE=?");
			stmt.setInt(1, CNE);
			ResultSet resultat = stmt.executeQuery();
			while(resultat.next()) 
			{	
				 CNE         =   resultat.getInt("CNE");
			String	nom        =   resultat.getString("nom");
				 String prenom     =   resultat.getString("prenom");
			String	email      =   resultat.getString("email");
			String	dateNaissance =   resultat.getString("dateNaissance");
			String	region   =   resultat.getString("region");
			String	TypeBac  =   resultat.getString("TypeBac");
			
			Etudiant e= new Etudiant();
			e.setCNE(CNE);	
		    e.setNom(nom);
			e.setPrenom(prenom);
			e.setEmail(email);
			e.setdateNaissance(dateNaissance);
			e.setRegion(region);
			e. setTypeBac(TypeBac);
			etudiantss.add(e);
				
			}
			return etudiantss;	
			
		}		
		
		
		catch(SQLException e) 
		{
			throw new DaoException("Erreur d'excution de la requÍte",e);
		}
	}
	
	public static void update(Etudiant e)throws DaoException {
		
		PreparedStatement prepare;

		try 
		{
		
			prepare = (PreparedStatement) connexion.prepareStatement("UPDATE Etudiant SET nom = ?, prenom = ?, email = ?, dateNaissance = ?, region = ?, TypeBac=? WHERE CNE = ?;");
		prepare.setString(1, e.getNom());
		prepare.setString(2, e.getPrenom());
		prepare.setString(3, e.getEmail());
		prepare.setString(4, e.getdateNaissance());
		prepare.setString(5, e.getRegion());
		prepare.setString(6, e.getTypeBac());
		prepare.setInt(7, e.getCNE());
		prepare.executeUpdate();
		} 
		catch (SQLException e1) 
		{
			throw new DaoException("Erreur d'excution de la requÍte",e1);
		}
	}
}
	
	
		
		
	


