import java.sql.*;

public class lab7 {

	public static void main(String[] args) {
		
		//Class.forName("com.mysql.jdbc.Driver");

		//static final String USER = "username";
		//static final String PASS = "password";

		Connection conn = null;
		try {
			Class.forName("org.sqlite.JDBC");
		}
		catch (Exception ex) {
			System.err.println(ex.getClass().getName() + ": " + ex.getMessage());
			System.exit(0);
		}
		
		try {
			conn = DriverManager.getConnection("jdbc:sqlite:lab7.db");
		} catch (Exception ex) {
			System.err.println(ex.getClass().getName() + ": " + ex.getMessage());
			System.exit(0);
		}
		
		try {
			Statement stat = conn.createStatement();
			stat.executeUpdate("drop table if exists student;");
			stat.executeUpdate("create table student (name, university);");
			stat.executeUpdate("insert into student values (’John Smith’, ’UC Merced’);");
			
			ResultSet rs = stat.executeQuery("select * from people;");
			while (rs.next()) {
				System.out.println("name = " + rs.getString("name"));
				System.out.println("university = " + rs.getString("occupation"));
			}
			rs.close();
		} catch (Exception ex) {
			System.err.println(ex.getClass().getName() + ": " + ex.getMessage());
			System.exit(0);
		}
		try {
			conn.close();
		} catch (Exception ex) {
			System.err.println(ex.getClass().getName() + ": " + ex.getMessage());
			System.exit(0);
		}
		
		return;
	}

}