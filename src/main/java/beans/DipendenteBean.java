package beans;

public class DipendenteBean implements java.io.Serializable{
	private int IDDipendente;
	private int IDFSede;
	private String Nome;
	private String Cognome;
	private String Cellulare;
	private String Email;
	private String Username;
	private String Password;
	
	public DipendenteBean() {
		this.IDDipendente = -1;
		this.IDFSede = -1;
		this.Nome = "";
		this.Cognome = "";
		this.Cellulare = "";
		this.Email = "";
		this.Username = "";
		this.Password = "";
	}

	public int getIDDipendente() {
		return IDDipendente;
	}

	public void setIDDipendente(int iDDipendente) {
		IDDipendente = iDDipendente;
	}

	public int getIDFSede() {
		return IDFSede;
	}

	public void setIDFSede(int iDFSede) {
		IDFSede = iDFSede;
	}

	public String getNome() {
		return Nome;
	}

	public void setNome(String nome) {
		Nome = nome;
	}

	public String getCognome() {
		return Cognome;
	}

	public void setCognome(String cognome) {
		Cognome = cognome;
	}

	public String getCellulare() {
		return Cellulare;
	}

	public void setCellulare(String cellulare) {
		Cellulare = cellulare;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}
	
	
}
