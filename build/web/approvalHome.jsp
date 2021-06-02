<%@page import="ePass.dbConnectDAO"%>
<%@ page import = "java.sql.*"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link href="homestyle.css" rel="stylesheet">
<title>FACULTY DASHBOARD</title>
<%     
                  
            Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/epassdb",
            "root", "admin");        
            String id1=(String)session.getAttribute("name");     
            Statement st = conn.createStatement();    
            ResultSet rs; 
            PreparedStatement ps=  conn.prepareStatement("Select * from teacher_registered where id=?");          
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
  <a href="approvalHome.jsp">Dashboard</a>
  <a href="approvalProfile.jsp">Your Profile</a>
  <a href="Login.html">Logout</a>
<!--   <a href="changePassword.html">change password</a>-->
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
  
<p class="one"> <a href="preApproval.jsp" style="text-decoration: none;">Pending Gate passes</a></p>
<p class="two"><a href="approvedPassTeacher.jsp" style="text-decoration: none;">Approved Gate Passes</a></p>
<p class="three"><a href="rejectedPassTeacher.jsp" style="text-decoration: none;">Rejected Gate Passes</a></p>



 
</body>
</html> 
<%
}
%>