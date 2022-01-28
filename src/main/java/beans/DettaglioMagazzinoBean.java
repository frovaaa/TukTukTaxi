package beans;

public class DettaglioMagazzinoBean implements java.io.Serializable{
	private int IDFMagazzino;
	private int IDFMateriale;
	private int IDFOperazioneManutenzione;
	private int Quantita;
	
	public DettaglioMagazzinoBean() {
		this.Quantita = -1;
	}
	
	public int getIDFMagazzino() {
		return IDFMagazzino;
	}
	public void setIDFMagazzino(int iDFMagazzino) {
		IDFMagazzino = iDFMagazzino;
	}
	public int getIDFMateriale() {
		return IDFMateriale;
	}
	public void setIDFMateriale(int iDFMateriale) {
		IDFMateriale = iDFMateriale;
	}
	public int getIDFOperazioneManutenzione() {
		return IDFOperazioneManutenzione;
	}
	public void setIDFOperazioneManutenzione(int iDFOperazioneManutenzione) {
		IDFOperazioneManutenzione = iDFOperazioneManutenzione;
	}
	public int getQuantita() {
		return Quantita;
	}
	public void setQuantita(int quantita) {
		Quantita = quantita;
	}
}
