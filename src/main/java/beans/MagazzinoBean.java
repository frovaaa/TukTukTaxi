package beans;

public class MagazzinoBean implements java.io.Serializable{
	private int IDMagazzino;
	private int IDFSede;
	
	public MagazzinoBean() {
		this.IDMagazzino = -1;
		this.IDFSede = -1;
	}

	public int getIDMagazzino() {
		return IDMagazzino;
	}

	public void setIDMagazzino(int iDMagazzino) {
		IDMagazzino = iDMagazzino;
	}

	public int getIDFSede() {
		return IDFSede;
	}

	public void setIDFSede(int iDFSede) {
		IDFSede = iDFSede;
	}
}
