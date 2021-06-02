<%@page import="ePass.dbConnectDAO"%>
<%@ page import = "java.sql.*"%>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="homestyle.css" rel="stylesheet">
<title>STUDENT DASHBOARD</title>


<%     
                  
            Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/epassdb",
            "root", "admin");        
            String id1=(String)session.getAttribute("name");     
            Statement st = conn.createStatement();    
            ResultSet rs; 
            PreparedStatement ps=  conn.prepareStatement("Select * from student_registered where id=?");          
            ps.setString(1, id1);           
            rs = ps.executeQuery();           
            if(rs.next())
            {
            %>
          
<div class="topnav">
  <a class="active" href="#home">Lakshmi Narain College of Technology</a>
  <a href="#news">ID<br><%=rs.getString("id")%></a>
      <a href="#contact">Departement <br><%=rs.getString("department")%></a>
  <a href="#about"><%=rs.getString("name")%></a>
  <a href="Login.html"> <i class="fa fa-power-off" style="font-size:38px;color:green;margin-left:650px;margin-top: 15px"></i></a>
</div>

<div style="padding-left:16px">

</div>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="home.jsp">Dashboard</a>
  <a href="studentProfile.jsp">Your Profile</a>
  <a href="Login.html">Logout</a>
   <a href="changePassword.html">change password</a>
  <a href="contact.html">Contact</a>
</div>

<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open</span>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
  
<p class="one"> <a href="requestPassForm.jsp" style="text-decoration: none;">Request Gate pass</a></p>
<p class="two"><a href="approvedPassStudent.jsp" style="text-decoration: none;">Approved Gate Pass</a></p>
<p class="three"><a href="rejectedPassStudent.jsp" style="text-decoration: none;">Rejected Gate pass</a></p>
<p class="four"><a href="pendingPassStudent.jsp" style="text-decoration: none;">Pending Gate pass</a></p> 



<div style="margin-top: 600px;font-size: 20px"> <a href="Login.html" class="previous" style=" display: inline-block; padding: 8px 16px; background-color: #4CAF50;
  color: white;">&laquo; Previous</a></div>


 	
</body>
</html> 
<%
}
%>