package beans;

import java.time.LocalDate;

public class OperazioneManutenzione implements java.io.Serializable{
    private int IDOperazione;
    private int IDFDipendente;
    private int IDFTukTuk;
    private int Descrizione;
    private LocalDate DataInizioOperazione;
    private LocalDate DataFineOperazione;

    public OperazioneManutenzione(){
        DataFineOperazione = null;
        DataInizioOperazione = null;
    }


    public int getIDOperazione() {
        return this.IDOperazione;
    }

    public void setIDOperazione(int IDOperazione) {
        this.IDOperazione = IDOperazione;
    }

    public int getIDFDipendente() {
        return this.IDFDipendente;
    }

    public void setIDFDipendente(int IDFDipendente) {
        this.IDFDipendente = IDFDipendente;
    }

    public int getIDFTukTuk() {
        return this.IDFTukTuk;
    }

    public void setIDFTukTuk(int IDFTukTuk) {
        this.IDFTukTuk = IDFTukTuk;
    }

    public int getDescrizione() {
        return this.Descrizione;
    }

    public void setDescrizione(int Descrizione) {
        this.Descrizione = Descrizione;
    }

    public LocalDate getDataInizioOperazione() {
        return this.DataInizioOperazione;
    }

    public void setDataInizioOperazione(LocalDate DataInizioOperazione) {
        this.DataInizioOperazione = DataInizioOperazione;
    }

    public LocalDate getDataFineOperazione() {
        return this.DataFineOperazione;
    }

    public void setDataFineOperazione(LocalDate DataFineOperazione) {
        this.DataFineOperazione = DataFineOperazione;
    }

}
