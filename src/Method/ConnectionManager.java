package Method;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import Exception.DaoException;
public class ConnectionManager {
	private static Connection connexion    = null;
	public ConnectionManager() {
		
	}
	public static Connection getInstance() throws DaoException {
	
	if(connexion == null) {
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			connexion = DriverManager.getConnection("jdbc:mysql://localhost/etudiant?serverTimezone=UTC","root","");
		} 
		catch ( ClassNotFoundException e ) 
		{
			throw new DaoException("Erreur de chargement du pilote.", e);
		}
		catch (SQLException e) 
		{
			throw new DaoException("Impossible d'acceder à la base de donnees.", e);
		}
		
	}
	return connexion;
}


}
