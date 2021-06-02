<%@page import="ePass.dbConnectDAO"%>
<%@ page import = "java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="homestyle.css" rel="stylesheet">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
        <title>Faculty Profile</title>
   
   
    
        <style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  font-weight: bold;
  margin-left: 300px;
  margin-top: 100px;
}
th, td {
  padding: 15px;
  text-align: center;
  font-weight: bold;
}
#t01 {
  width: 70%;    
 
}
tr:nth-child(even) {
  background-color: #f2f2f2;


</style>
    </head>

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
   <a href="Login.html"> <i class="fa fa-power-off" style="font-size:38px;color:green;margin-left:610px;margin-top: 15px"></i></a>
</div>

<div style="padding-left:16px">

</div>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="approvalHome.jsp">Dashboard</a>
  <a href="approvalProfile.jsp">Your Profile</a>
  <a href="Login.html">Logout</a>
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

       <table id="t01">

  
        <%
       
            try
            {   String id2=(String)session.getAttribute("name");  
            ps=  conn.prepareStatement("select name,email,password,contact,college,id,department from teacher_registered where id=?");          
            ps.setString(1, id2);           
            rs = ps.executeQuery();           
            if(rs.next())
            {
         
          
            %>
       
            <center><h1>FACULTY PROFILE</h1></center>
           </div>
  <tr><td >NAME OF THE TEACHER </td><td><%=rs.getString("name") %></td>   </tr>          
  <tr><td >EMAIL ID OF THE TEACHER</td>  <td><%=rs.getString("email") %></td> </tr>                      
 <tr><td>PASSWORD OF THE TEACHER</td><td><%=rs.getString("password") %> </td></tr>
 <tr><td >COLLEGE NAME OF THE TEACHER</td><td><%=rs.getString("college") %> </td></tr>
 <tr> <td >CONTACT OF THE TEACHER</td><td><%=rs.getString("contact") %> </td></tr>
 <tr><td >ID OF THE TEACHER </td><td><%=rs.getString("id") %></td> </tr>
  <tr><td >DEPARTMENT OF THE TEACHER</td> <td><%=rs.getString("department") %></td> </tr>
        
                   
        </table>
         
            <%
            }
            }
           catch(SQLException ex)
         { 
           System.out.println("sorry problem with database");
          System.out.println(ex.getMessage());
          }
         finally
         {
        if(conn!=null) 
        
        try
        { 
        conn.close();
        System.out.println("Connection sucessfully closed");
        }
        catch(SQLException ex)
        { 
        System.out.println("sorry problem with database");
        System.out.println(ex.getMessage());
   
        }

        }

        %>
    </body>
<div style="margin-top: 70px;font-size: 20px"> <a href="approvalHome.jsp" class="previous" style=" display: inline-block; padding: 8px 16px; background-color: #4CAF50;
  color: white;">&laquo; Previous</a></div>
 
</body>
</html> 
<%
}
%>




















   
      