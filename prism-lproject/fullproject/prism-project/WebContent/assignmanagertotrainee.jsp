<%@ page language="java" import="java.util.*,java.sql.*,dbconnection.DBConnection" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Online Assesment Tool PRISM</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
      crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>

  <style>
    ul {
      list-style-type: none;
      margin: 0;
      padding: 0px;
      overflow: hidden;
      background-color: lightgray;
    }
    
    li {
      float: left;
    }
    
    li a {
      display: block;
      color: blue;
     font-size:20px;
      text-align: center;
      padding: 10px 20px;
      text-decoration: none;
    }
    .active{
    background-color: gray;
    color: white;
    }
    li a:hover {
      background-color: orange;
      color: white;
    }
    </style>

</head>
<body>
  <!-- <div class="container-fluid p--5 bg-white text-white text-center">
    <button class="btn btn-default">
          <img src="C:\Users\grace\OneDrive\Desktop\samsungadmin\PRISMlogo.jpg" width="350" height="80"/>
    </button> 
  </div>

  <ul>
    <li><a class="active" href="#home">Home</a></li>
    <li><a href="#">About</a></li>
    <li><a href="#">Contact</a></li>
    
    
    <li><a class="dropdown-class" href="password.html" align="topnav-right" >Change Password</a></li>
      <li><a class="dropdown-class" href="login.html" align="topnav-right">Logout</a></li>
  </ul>

  <br><br><br> -->
  <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #ffffff;">  <div class="container">
    <a class="navbar-brand mx-auto" href="#">

      <img src="images/PRISMlogo.jpg" width="200" height="50" alt="" />
    </a>
    
    <br><br>
    <div class="text-right">
      <!-- <button type="button" class="btn btn-light">Light</button> -->
      <!-- <img src="accountlogo.png" width="50" height="50" alt="" /> -->
      <button type="button" class="btn btn-light-light my-2 my-sm-0"><i class="material-icons">&#xe7fd;</i></button>

    </div>
</nav>
<br><br>
<div class="container mt-3" align="center">
  <h2>Assign Manager to Trainee</h2><br><br>
  <table class="table">
    <thead>
      <tr>
        <th>S.no</th>
        <th>Trainee Name</th>
        <th>Choose Manager</th>
        <th>Assign</th>
      </tr>
    </thead>
    <tbody>
      
<%
try{
Connection con=DBConnection.getConnection();
PreparedStatement pstmt1=con.prepareStatement("select * from trainee");
ResultSet rs1 = pstmt1.executeQuery();

PreparedStatement pstmt2=con.prepareStatement("select fullname from manager");
ResultSet rs2 = pstmt2.executeQuery();
while(rs1.next())
{
%>
        <tr>
        <td><%=rs1.getInt(1) %></td>
        <td><%=rs1.getString(2) %></td>
        
        <td>                
        <div class="btn-group">
          <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Choose
          </button>
          <div class="dropdown-menu">
          <%
          while(rs2.next())
          { 
          %>
            <a class="dropdown-item" value="<%=rs2.getString(1)%>" name="managername"><%=rs2.getString(1) %></a>
          <%} %>
        </div>
        </td>
        
        <td><a href="assigned1.html">Assign</a></td>
      </tr>
<%
}
}
catch(Exception e)
{
	out.println("Exception:"+e);
}

%>
    </tbody>
  </table><br>
  <a href="adminhome.html" type="submit" class="btn btn-primary" align="center">Go Back</a>
</div>  
</body>
</html>