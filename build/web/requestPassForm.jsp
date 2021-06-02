
<%@ page import = "java.sql.*"%>
<%@page import="java.util.*,java.text.*"%>
<html>
<head>
     <script src="reqPassValid.js"> </script>
    <script src="getCurrentDate.js"> </script>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link href="requestlPass.css" rel="stylesheet">
<link href="homestyle.css" rel="stylesheet">
<title>GATE-PASS APPLY STUDENT</title>
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
   <a href="changePassword.html">Change password</a>
  <a href="contact.html">Contact</a>
</div>

<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open </span>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
<div class="testbox">
      <form method="POST" onsubmit = "return(validate())" action="requestPass.jsp" name="reqform" >
        <h1>GatePass Applying Form</h1>
     
         
      <div class="item">   
  <label for="appt">Enrollment Number</label>
  <input type="text" id="appt" name="enroll">
  </div>
 
        <div class="item">
          <p>Gatepass issue date</p>
       <input type="date" id="start" name="a_date"
       value="2020-11-26"
       min="2020-10-19" >
        </div>
    
       
      <div class="item">   
  <label for="appt">Select a time:</label>
  <input type="time" id="appt" name="time">
  </div>
 
        <div class="item">
          <p>Reason for applying gatepass</p>
          <textarea rows="5" name="reason"></textarea>
        </div>
       
        <div class="btn-block">
          <button type="submit" onclick="myFunction()">Apply</button>           
        </div>      
      </form>     
    </div>
 <div style="margin-top: 100px;font-size: 20px"> <a href="home.jsp" class="previous" style=" display: inline-block; padding: 8px 16px; background-color: #4CAF50;
  color: white;">&laquo; Previous</a></div>
</body>
</html> 
<%
}
%>