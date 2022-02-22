package beans;

import java.util.ArrayList;

public class SedeBean implements java.io.Serializable{
    private int IDSede;
    private String Paese;
    private String Citta;
    private String CAP;
    private String Via;
    private int NCivico;

    public SedeBean(){
    	this.IDSede = -1;
    	this.Paese = "";
    	this.Citta = "";
    	this.CAP = "";
    	this.Via = "";
    	this.NCivico = -1;
    }

    public int getIDSede() {
        return this.IDSede;
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
    
    public ArrayList<String> getSedi() {
    	ArrayList<String> listaSedi = new ArrayList<String>();
    	
    	
    	
    	return listaSedi;
    }

}
