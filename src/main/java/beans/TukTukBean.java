package beans;

import java.time.LocalDate;

public class TukTukBean implements java.io.Serializable{
    private int IDOperazione;
    private int IDFModello;
    private int IDFSede;
    private String Targa;
    private String NumeroDiTelaio;
    private LocalDate DataAcquisto;

    public TukTukBean(){

    }

    public int getIDOperazione() {
        return this.IDOperazione;
    }

    public void setIDOperazione(int IDOperazione) {
        this.IDOperazione = IDOperazione;
    }

    public int getIDFModello() {
        return this.IDFModello;
    }

    public void setIDFModello(int IDFModello) {
        this.IDFModello = IDFModello;
    }

    public int getIDFSede() {
        return this.IDFSede;
    }

    public void setIDFSede(int IDFSede) {
        this.IDFSede = IDFSede;
    }

    public String getTarga() {
        return this.Targa;
    }

    public void setTarga(String Targa) {
        this.Targa = Targa;
    }

    public String getNumeroDiTelaio() {
        return this.NumeroDiTelaio;
    }

    public void setNumeroDiTelaio(String NumeroDiTelaio) {
        this.NumeroDiTelaio = NumeroDiTelaio;
    }

    public LocalDate getDataAcquisto() {
        return this.DataAcquisto;
    }

    public void setDataAcquisto(LocalDate DataAcquisto) {
        this.DataAcquisto = DataAcquisto;
    }

}
