package beans;
import java.time.LocalDate;


public class CorsaBean implements java.io.Serializable{
	private int IDCorsa;
	private int IDFDipedente;
	private int IDFTukTuk;
	private LocalDate DataInizio;
	private LocalDate DataFine;
	private float Chilometri;
	private float TariffaCorsa;
	
	public CorsaBean() {
		this.IDCorsa = -1;
		this.IDFDipedente = -1;
		this.IDFTukTuk = -1;
		this.DataInizio = null;
		this.DataFine = null;
		this.Chilometri = -1;
		this.TariffaCorsa = -1;
	}

	public int getIDCorsa() {
		return IDCorsa;
	}

	public void setIDCorsa(int iDCorsa) {
		IDCorsa = iDCorsa;
	}

	public int getIDFDipedente() {
		return IDFDipedente;
	}

	public void setIDFDipedente(int iDFDipedente) {
		IDFDipedente = iDFDipedente;
	}

	public int getIDFTukTuk() {
		return IDFTukTuk;
	}

	public void setIDFTukTuk(int iDFTukTuk) {
		IDFTukTuk = iDFTukTuk;
	}

	public LocalDate getDataInizio() {
		return DataInizio;
	}

	public void setDataInizio(LocalDate dataInizio) {
		DataInizio = dataInizio;
	}

	public LocalDate getDataFine() {
		return DataFine;
	}

	public void setDataFine(LocalDate dataFine) {
		DataFine = dataFine;
	}

	public float getChilometri() {
		return Chilometri;
	}

	public void setChilometri(float chilometri) {
		Chilometri = chilometri;
	}

	public float getTariffaCorsa() {
		return TariffaCorsa;
	}

	public void setTariffaCorsa(float tariffaCorsa) {
		TariffaCorsa = tariffaCorsa;
	}
	
	
}
