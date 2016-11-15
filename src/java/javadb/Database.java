package javadb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Database{
    private static Connection con;
    public Database() throws SQLException, ClassNotFoundException{
        Class.forName("org.postgresql.Driver");
        String url = "jdbc:postgresql://localhost:5432/WebServer";
        String user = "postgres";
        String password = "admin";
        con = DriverManager.getConnection(url, user, password);
    }
    public ResultSet query(String query) throws SQLException{
        Statement stmt;
        stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(query);
        return rs;
    }
}
    