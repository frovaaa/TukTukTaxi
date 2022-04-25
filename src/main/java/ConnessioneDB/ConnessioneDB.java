package ConnessioneDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.beans.*;

public class ConnessioneDB {
	private static final String DB_DRIVER = "org.mariadb.jdbc.Driver";
	private static final String DB_CONNECTION = "jdbc:mariadb://database.paolopocaterra.eu:3306/TukTukDB";
	private static final String DB_USER = "Frova";
	private static final String DB_PASSWORD = "8?}t*dveV5Uq?){p";
	
	private static Connection Connetti() throws Exception{
		Connection connessione = null;
		
		try {
			Class.forName(DB_DRIVER);
		}catch (Exception ex){
			System.out.print(ex.getMessage());
			throw new RuntimeException(ex);
		}
		
		try {
			connessione = DriverManager.getConnection(DB_CONNECTION, DB_USER, DB_PASSWORD);
			System.out.println("Connessione avvenuta!!");
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
			throw new RuntimeException(ex);
		}
		
		return connessione;
		
	}
	
	public static int GetIDUtente(String Username) throws Exception {
		Connection c = null;
		Statement s = null;
		Boolean flag = false;
		
		try {
			c = Connetti();
			s = c.createStatement();
			String query = "SELECT IDDipendente FROM Dipendente WHERE Username = '"+Username+"'";
			
			ResultSet ListaUtenti = s.executeQuery(query);
			ListaUtenti.next();
			
			return ListaUtenti.getInt("IDDipendente");
		}catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}finally {
			if(s != null) s.close();
			if(c != null) c.close();
		}
		
		return 0;
	}
	public static beans.DipendenteBean GetUtenteByID(int id) throws Exception {
		Connection c = null;
		Statement s = null;
		Boolean flag = false;
		beans.DipendenteBean u = new beans.DipendenteBean();
		
		try {
			c = Connetti();
			s = c.createStatement();
			String query = "SELECT * FROM Dipendente WHERE IDDipendente = '"+id+"'";
			
			ResultSet Utente = s.executeQuery(query);
			Utente.next();
			
			u.setIDFSede(Utente.getInt("IDFSede"));
			u.setIDFRuolo(Utente.getInt("IDFRuolo"));
			u.setNome(Utente.getString("Nome"));
			u.setCognome(Utente.getString("Cognome"));
			u.setEmail(Utente.getString("Email"));
			
			return u;
		}catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}finally {
			if(s != null) s.close();
			if(c != null) c.close();
		}
		
		return u;
	}
	public static boolean GetUtenti(String Username, String Passwd) throws Exception {
		Connection c = null;
		Statement s = null;
		Boolean flag = false;
		
		try {
			c = Connetti();
			s = c.createStatement();
			String query = "SELECT * FROM Dipendente WHERE Username = '"+Username+"' AND Password = '"+Passwd+"'";
			
			ResultSet ListaUtenti = s.executeQuery(query);
			
			while(ListaUtenti.next()) { flag = true; }
		}catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}finally {
			if(s != null) s.close();
			if(c != null) c.close();
		}
		
		return flag;
	}
	public static boolean SetUtenti(String sede, String nome, String cognome, String telefono, String email, String user, String pass) throws Exception {
		Connection c = null;
		Statement s = null;
		Boolean flag = false;
		
		try {
			c = Connetti();
			s = c.createStatement();
			
			int idSede = GetSede(sede);
			if(idSede == -1) { return false; }
			
			String query = "INSERT INTO Dipendente (IDFSede, Nome, Cognome, Cellulare, Email, Username, Password) VALUES ("+idSede+", '"+nome+"', '"+cognome+"', '"+telefono+"',  '"+email+"', '"+user+"', '"+pass+"')";
			System.out.println(query);
			flag = s.execute(query);
		}catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}finally {
			if(s != null) s.close();
			if(c != null) c.close();
		}
		
		return flag;
	}
	
	public static int GetSede(String nome) throws Exception {
		Connection c = null;
		Statement s = null;
		
		try {
			c = Connetti();
			s = c.createStatement();
			String query = "SELECT IDSede FROM Sede WHERE Nome = '"+nome+"'";
			
			ResultSet ListaSedi = s.executeQuery(query);
			ListaSedi.next();
			
			System.out.println(query);
			System.out.println(ListaSedi.getInt(1));
			
			return ListaSedi.getInt(1);
		}catch (SQLException ex) {
			System.out.println(ex.getMessage());
			return -1;
		}finally {
			if(s != null) s.close();
			if(c != null) c.close();
		}
	}
	public static String GetNomeSede(int id) throws Exception{
		Connection c = null;
		Statement s = null;
		
		try {
			c = Connetti();
			s = c.createStatement();
			String query = "SELECT Nome FROM Sede WHERE IDSede = '"+id+"'";
			
			ResultSet ListaSedi = s.executeQuery(query);
			ListaSedi.next();
			
			return ListaSedi.getString(1);
		}catch (SQLException ex) {
			System.out.println(ex.getMessage());
			return "";
		}finally {
			if(s != null) s.close();
			if(c != null) c.close();
		}
	}
	public static beans.SedeBean getSedeByID(int i) throws Exception{
		Connection c = null;
		Statement s = null;
		beans.SedeBean sede = new beans.SedeBean();
		
		try {
			c = Connetti();
			s = c.createStatement();
			String query = "SELECT * FROM Sede WHERE IDSede = '"+i+"'";
			
			ResultSet ListaSedi = s.executeQuery(query);
			ListaSedi.next();
			
			sede.setNome(ListaSedi.getString("Nome"));
			sede.setPaese(ListaSedi.getString("Paese"));
			sede.setCitta(ListaSedi.getString("Citta"));
			sede.setCAP(ListaSedi.getString("CAP"));
			sede.setVia(ListaSedi.getString("Via"));
			sede.setNCivico(ListaSedi.getInt("NCivico"));
			sede.setTelefono(ListaSedi.getString("Telefono"));
			
			return sede;
		}catch (SQLException ex) {
			System.out.println(ex.getMessage());
			return null;
		}finally {
			if(s != null) s.close();
			if(c != null) c.close();
		}
	}
    public static ArrayList<String> getSedi() throws Exception {
    	ArrayList<String> listaSedi = new ArrayList<String>();
    	Connection c = null;
    	Statement s = null;
    	
    	try {
    		c = Connetti();
    		s = c.createStatement();
    		String query = "SELECT Nome FROM Sede ORDER BY Nome ASC;";
    		
    		ResultSet sedi = s.executeQuery(query);
    		while(sedi.next()) {
    			listaSedi.add(sedi.getString("Nome"));
    		}
    		return listaSedi;
    		
    	} catch (SQLException ex) {
    		System.out.println(ex.getMessage());
    		return null;
    	} finally {
    		if(s != null) s.close();
    		if(c != null) c.close();
    	}
    }
   
    public static ArrayList<beans.DipendenteBean> getDipendenti() throws SQLException{
    	ArrayList<beans.DipendenteBean> a = new ArrayList<beans.DipendenteBean>();
    	Connection c = null;
    	Statement s = null;
    	
    	try {
    		c = Connetti();
    		s = c.createStatement();
    		
    		String q = "SELECT * FROM Dipendente;";
    		ResultSet d = s.executeQuery(q);
    		
    		while(d.next()) {
    			beans.DipendenteBean temp = new beans.DipendenteBean();
    			
    			temp.setIDDipendente(d.getInt("IDDipendente"));
    			temp.setIDFSede(d.getInt("IDFSede"));
    			temp.setNome(d.getString("Nome"));
    			temp.setCognome(d.getString("Cognome"));
    			temp.setUsername(d.getString("Username"));
    			temp.setPassword("pass");
    			temp.setEmail(d.getString("Email"));
    			temp.setCellulare(d.getString("Cellulare"));
    			
    			a.add(temp);
    		}
    	}catch(Exception ex) {
    		System.out.println(ex.getMessage());
    	}finally {
    		if(s != null) s.close();
    		if(c != null) c.close();
    	}
    	
    	return a;
    }
        	public static boolean SetCorsa(String DataInizio, String DataFine, Int Chilometri, Float Tariffa, Int IDFDipendente) throws Exception {
        		Connection c = null;
        		Statement s = null;
        		Boolean flag = false;

        		try {
        			c = Connetti();
        			s = c.createStatement();

        			String query = "INSERT INTO Corsa (IDFDipendente, DataInizio, DataFine, Chilometri, TariffaCorsa) VALUES ("+IDFDipendente+", '"+DataInizio+"', '"+DataFine+"', '"+Chilometri+"',  '"+Tariffa+"')";
        			System.out.println(query);
        			flag = s.execute(query);
        		}catch (SQLException ex) {
        			System.out.println(ex.getMessage());
        		}finally {
        			if(s != null) s.close();
        			if(c != null) c.close();
        		}

        		return flag;
        	}
}