package ConnessioneDB;

import java.sql.Connection;
import java.sql.SQLException;
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
		
		
		
		return connessione;
		
	}

	public static boolean GetUtenti() throws SQLException {
		Connection c = null;
		Statement s = null;
		Boolean flag = false;
		
		try {
			c = Connetti();
			s = c.createStatement();
			String query = "SELECT * FROM Dipedente WHERE ";
			
		}catch (SQLException ex) {
			
		}
	}
}
