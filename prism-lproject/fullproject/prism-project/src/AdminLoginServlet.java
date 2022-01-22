import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconnection.DBConnection;

@WebServlet("/adminlogin")
public class AdminLoginServlet extends HttpServlet
{
  
  public void service(HttpServletRequest req,HttpServletResponse res) throws IOException , ServletException
  {
    res.setContentType("text/html");
    PrintWriter out=res.getWriter();
    String uname = req.getParameter("uname");
    String pwd = req.getParameter("pwd");
    try 
    {
    	Connection con=DBConnection.getConnection();
        PreparedStatement pstmt=con.prepareStatement("select * from admin where username=? and password=?");
        pstmt.setString(1, uname);
        pstmt.setString(2, pwd);
        ResultSet rs = pstmt.executeQuery();
        if(rs.next())
        {
        	RequestDispatcher rd = req.getRequestDispatcher("adminhome.html");
        	rd.forward(req, res);
        }
    }
    catch(Exception e)
    {
    	out.println("Exception:"+e);
    }
  }
}