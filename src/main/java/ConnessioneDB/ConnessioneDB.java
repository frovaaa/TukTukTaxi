package ConnessioneDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.beans.*;

public class ConnessioneDB {
	private static final String DB_DRIVER = "com.mysql.jdbc.Driver";
	private static final String DB_CONNECTION = "jdbc:mysqli://database.paolopocaterra.eu/TukTukDB";
	private static final String DB_USER = "Frova";
	private static final String DB_PASSWORD = "8?}t*dveV5Uq?){p";
	
	private static Connection Connetti() throws Exception{
		Connection connessione = null;
		
		try {
			Class.forName(DB_DRIVER);
		}catch (Exception ex){
			System.out.print(ex.getMessage());
		}
		
		try {
			connessione = DriverManager.getConnection(DB_CONNECTION, DB_USER, DB_PASSWORD);
			
		}catch(SQLException ex){
			
		}
		
		return connessione;
		
	}

	public static boolean GetUtenti(String Username, String Passwd) throws Exception {
		Connection c = null;
		Statement s = null;
		Boolean flag = false;
		
		try {
			c = Connetti();
			s = c.createStatement();
			String query = "SELECT * FROM Dipedente WHERE Username = '"+Username+"' AND Password = '"+Passwd+"'";
			
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
}
