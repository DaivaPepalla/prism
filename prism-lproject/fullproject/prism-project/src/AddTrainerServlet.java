import java.io.File;
import java.io.FileInputStream;
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

@WebServlet("/addtrainer")
public class AddTrainerServlet extends HttpServlet
{
  
  public void service(HttpServletRequest req,HttpServletResponse res) throws IOException , ServletException
  {
    res.setContentType("text/html");
    PrintWriter out=res.getWriter();
    
    String fname = req.getParameter("fname");
    String id = req.getParameter("id");
    String age = req.getParameter("age");
    String pemail = req.getParameter("pemail");
    String wemail = req.getParameter("wemail");
    String pwd = req.getParameter("pwd");
    String domain = req.getParameter("domain");
    String address = req.getParameter("address");
    String docaddress = req.getParameter("upaddress");
    String photo = req.getParameter("photo");
    String mob1 = req.getParameter("mob1");
    String mob2 = req.getParameter("mob2");

    try 
    {
//    	File file1 = new File(docaddress);
//    	File file2 = new File(photo);
//    	FileInputStream fis1 = new FileInputStream(file1);
//    	FileInputStream fis2 = new FileInputStream(file2);
    	
    	String docpath = "E:/Internship/SAMSUNG PRISM/fullproject/prism-project/WebContent/manager/"+docaddress ;
    	String photopath = "E:/Internship/SAMSUNG PRISM/fullproject/prism-project/WebContent/manager/"+photo;
    	
    	Connection con=DBConnection.getConnection();
        PreparedStatement pstmt=con.prepareStatement("insert into trainer values(?,?,?,?,?,?,?,?,?,?,?,?)");
        pstmt.setString(2, fname);
        pstmt.setString(1, id);
        pstmt.setString(3, age);
        pstmt.setString(4, pemail);
        pstmt.setString(5, wemail);
        pstmt.setString(6, pwd);
        pstmt.setString(7, domain);
        pstmt.setString(8, address);
        pstmt.setString(9, docpath);
        pstmt.setString(10, photopath);
        pstmt.setString(11, mob1);
        pstmt.setString(12, mob2);
        int n = pstmt.executeUpdate();
        if(n>0)
        {
        	RequestDispatcher rd = req.getRequestDispatcher("trainersuccess.html");
        	rd.forward(req, res);
        }
        else
        {
        	System.out.println(n);
        	RequestDispatcher rd = req.getRequestDispatcher("trainerfailure.html");
        	rd.forward(req, res);
        }
    }
    catch(Exception e)
    {
    	RequestDispatcher rd = req.getRequestDispatcher("trainerfailure.html");
    	rd.forward(req, res);
    	out.println("Exception:"+e);
    }
  }
}