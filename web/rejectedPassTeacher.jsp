<%@page import="ePass.dbConnectDAO"%>
<%@ page import = "java.sql.*"%>
<html>
<head>
    <TITLE>REJECTED PASSES</TITLE>  
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="homestyle.css" rel="stylesheet">
<script src="acceptReject.js"></script>
   <style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  font-weight: bold;
  margin-left: 200px;
  margin-top: 50px;
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
  <body>        <table  border="2" id="myTable" >
          <center>   <h1>LIST OF REJECTED GATE PASSES</h1></center>
    <tr>
        <th style="background-color: #4CAF50; color:white" align="center">NAME OF THE STUDENT </th>
	<th style="background-color: #4CAF50; color:white" align="center">ID OF THE STUDENT</th>
        <th style="background-color:#4CAF50; color:white" align="center">DEPARTMENT OF THE STUDENT</th>
	<th style="background-color: #4CAF50; color:white" align="center">CONTACT OF THE STUDENT</th>
	<th style="background-color: #4CAF50; color:white" align="center">REASON FOR APPLYING GATE PASS </th>
       
        
      
    </tr>
      
        <%
        Connection con = null;
            try
            {
       
            rs=st.executeQuery("select id,name,department,contact,reason_for_pass from epass where status='rejected'");
            while(rs.next()){
                
          
            %>
           <tr>       
        
         <td id="myRow"><%=rs.getString("name") %></td>
  	<td><%=rs.getString("id") %></td>
  	<td><%=rs.getString("department") %></td>
        <td><%=rs.getString("contact") %></td>
  	<td><%=rs.getString("reason_for_pass") %></td>
     
          
          </tr>
           
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
        if(con!=null) 
        
        try
        { 
        con.close();
        System.out.println("Connection sucessfully closed");
        }
        catch(SQLException ex)
        { 
        System.out.println("sorry problem with database");
        System.out.println(ex.getMessage());
   
        }

        }

        %>
         </table>
    </body>
</html> 
<%
}
%>
