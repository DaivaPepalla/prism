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

@WebServlet("/img")
public class imgdisplay extends HttpServlet
{
  
  public void service(HttpServletRequest req,HttpServletResponse res) throws IOException , ServletException
  {
    res.setContentType("text/html");
    PrintWriter out=res.getWriter();
    

    try 
    {
    	
    	Connection con=DBConnection.getConnection();
        PreparedStatement pstmt=con.prepareStatement("select * from manager where id=?");
        pstmt.setInt(1, 1);
        ResultSet rs = pstmt.executeQuery();
        if(rs.next())
        {
        	out.println("<img src='"+rs.getString(10)+"' width='50' height='50' alt=''>");
        }
        else
        {
        	RequestDispatcher rd = req.getRequestDispatcher("managerfailure.html");
        	rd.forward(req, res);
        }
    }
    catch(Exception e)
    {
    	out.println("Exception:"+e);
    }
  }
}