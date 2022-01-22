<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<script type="text/javascript" src="table_script.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

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
  </ul> -->

  <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #ffffff;">  <div class="container">
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
<br><br>
<div class="container">

    <h2>Trainer Reviews</h2>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>S.no</th>
                <th>Trainer name</th>
                <th>Review</th>
            </tr>
        </thead> 
        <tbody>
            <tr>
                <td>1</td>
                <td>John</td>
                <td>Review</td>
            </tr> 
            <tr>
                <td>2</td>
                <td>James</td>
                <td>Review</td>
            </tr>      
            <tr>
                <td>3</td>
                <td>Jonathan</td>
                <td>Review</td>
            </tr>
        </tbody>
    </table>
    <br>
    <br>
    <h2>Trainee Reviews</h2>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>S.no</th>
                <th>Trainee name</th>
                <th>Review</th>
            </tr>
        </thead> 
        <tbody>
            <tr>
                <td>1</td>
                <td>shah jahan</td>
                <td>Review</td>
            </tr> 
            <tr>
                <td>2</td>
                <td>Rodrick</td>
                <td>Review</td>
            </tr>      
            <tr>
                <td>3</td>
                <td>Greg</td>
                <td>Review</td>
            </tr>
        </tbody>
    </table>
</div>
<br>
<br>
<center>
    <a href="managerhome.html" type="submit" class="btn btn-primary" align="center">Go Back</a>
    </center>
</body>
</html>