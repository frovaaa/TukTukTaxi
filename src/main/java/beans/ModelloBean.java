package beans;

public class ModelloBean implements java.io.Serializable{
    private int IDModello;
    private String NomeModello;
    private String TipoMotore;
    private int NumeroPosti;

    public ModelloBean(){

    }

    public int getIDModello(){ return IDModello; }
    public String getNomeModello(){ return NomeModello; }
    public String getTipoMotore(){ return TipoMotore; }
    public int getNumeroPosti(){ return NumeroPosti; }

    public void setNomeModello(String var){ NomeModello = var; }
    public void setTipoMotore(String var){ TipoMotore = var; }
    public void setNumeroPosti(int var){ NumeroPosti = var; }
}
