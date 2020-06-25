package Dao;

public class Etudiant {
	private int CNE;
	private String nom;
	private String prenom;
	private String email;
	private String dateNaissance;
	private String region;
	private String TypeBac;

	public Etudiant() {
		super();
	}
	public Etudiant(int CNE, String nom, String prenom,String email ,String dateNaissance ,String region ,String TypeBac) {
		super();
		this.CNE = CNE;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.dateNaissance = dateNaissance;
		this.region = region;
		this.TypeBac = TypeBac;
	}
	public int getCNE() {
		return CNE;
	}
	public void setCNE(int CNE) {
		this.CNE = CNE;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getdateNaissance() {
		return dateNaissance;
	}
	public void setdateNaissance(String dateNaissance) {
		this.dateNaissance = dateNaissance;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getTypeBac() {
		return TypeBac;
	}
	public void setTypeBac(String TypeBac) {
		this.TypeBac = TypeBac;
	}
}
