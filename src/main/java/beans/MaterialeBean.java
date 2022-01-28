package beans;

public class MaterialeBean implements java.io.Serializable{
	private int Materiale;
	private int CodiceID;
	private String Nome;
	private String Descrizione;
	
	public MaterialeBean() {
		this.Materiale = -1;
		this.CodiceID = -1;
		this.Nome = "";
		this.Descrizione = "";
	}

	public int getMateriale() {
		return Materiale;
	}

	public void setMateriale(int materiale) {
		Materiale = materiale;
	}

	public int getCodiceID() {
		return CodiceID;
	}

	public void setCodiceID(int codiceID) {
		CodiceID = codiceID;
	}

	public String getNome() {
		return Nome;
	}

	public void setNome(String nome) {
		Nome = nome;
	}

	public String getDescrizione() {
		return Descrizione;
	}

	public void setDescrizione(String descrizione) {
		Descrizione = descrizione;
	}
}
