<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*,java.sql.*,dbconnection.DBConnection"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Online Assesment Tool PRISM</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

  <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #ffffff;">
    <div class="container">
  
  <a class="navbar-brand mx-auto" href="#">

    <img src="images/PRISMlogo.jpg" width="200" height="50" alt="" />
  </a>
  <div class="navbar-brand">
    <button type="button" class="btn btn-light-light my-2 my-sm-0">Support</button>
    <!-- <img src="accountlogo.png" width="50" height="50" alt="" /> -->
    <!-- <i class="material-icons">&#xe7fd;</i> -->

  </div>
  <br><br>
  <div class="text-right">
    <!-- <button type="button" class="btn btn-light">Light</button> -->
    <!-- <img src="accountlogo.png" width="50" height="50" alt="" /> -->
    <button type="button" class="btn btn-light-light my-2 my-sm-0"><i class="material-icons">&#xe7fd;</i></button>

  </div>
</nav>


<!-- <div class="container-fluid p--5 bg-white text-white text-center">
  <button class="btn btn-default">
        <img src="F:\Samsung PRISM\prism_logo.png" width="450" height="180"/>
  </button> 
</div -->

<br><br><br>
<div class="container mt-3" align="center">
  <h2>Trainee Ranking</h2><br><br>
  <table class="table">
    <thead>
      <tr>
        <td>Rank</td>
        <td>Name</td>
        <td>Score</td>
      </tr>
    </thead>
    <tbody>
<%
try{
Connection con=DBConnection.getConnection();
PreparedStatement pstmt1=con.prepareStatement("select * from trainee");
ResultSet rs1 = pstmt1.executeQuery();

while(rs1.next())
{    
%>
      <tr>
        <td><%=rs1.getInt(1) %></td>
        <td><a href="vran.html"><%=rs1.getString(2) %></a></td>
        <td>400/500</td>
      </tr>
    </tbody>
  </table><br>
<%
}
}
catch(Exception e)
{
	out.println("Exception:"+e);
}

%>
  <a href="managerhome.html" type="submit" class="btn btn-primary" align="center">Go Back</a>
</div>
</body></html>