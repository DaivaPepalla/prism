package dbconnection;

import java.sql.*;

public class DBConnection
{
public static Connection getConnection()
{
Connection con = null;
try
{
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver Class Loaded");
//Establishing a Connection
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prism","root","root");
System.out.println("Connection Established");

 }
catch(Exception e)
{
System.out.println(e);
}
return con;
}
}