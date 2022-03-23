package beans;

public class SedeBean implements java.io.Serializable{
    private int IDSede;
    private String Nome;
    private String Paese;
    private String Citta;
    private String CAP;
    private String Via;
    private int NCivico;
    private String Telefono;

    public SedeBean(){
    	this.IDSede = -1;
    	this.Paese = "";
    	this.Citta = "";
    	this.CAP = "";
    	this.Via = "";
    	this.NCivico = -1;
    }

    public String getNome() {
        return this.Nome;
    }
    public void setNome(String Nome) {
        this.Nome = Nome;
    }
    
    public String getIDSede() {
        return ""+IDSede;
    }
    public void setIDSede(int IDSede) {
        this.IDSede = IDSede;
    }

    public String getPaese() {
        return this.Paese;
    }
    public void setPaese(String Paese) {
        this.Paese = Paese;
    }

    public String getCitta() {
        return this.Citta;
    }
    public void setCitta(String Citta) {
        this.Citta = Citta;
    }

    public String getCAP() {
        return this.CAP;
    }
    public void setCAP(String CAP) {
        this.CAP = CAP;
    }

    public String getVia() {
        return this.Via;
    }
    public void setVia(String Via) {
        this.Via = Via;
    }

    public int getNCivico() {
        return this.NCivico;
    }
    public void setNCivico(int NCivico) {
        this.NCivico = NCivico;
    }

	public String getTelefono() {
		return Telefono;
	}

	public void setTelefono(String telefono) {
		Telefono = telefono;
	}

}
