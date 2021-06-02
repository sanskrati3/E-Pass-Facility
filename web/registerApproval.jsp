
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teacher Registration</title>
    </head>
    <body>
        <%
   Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/epassdb",
            "root", "admin"); 
    
String id=request.getParameter("teac_id");
String name=request.getParameter("name");
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String clg=request.getParameter("clg");
String phn=request.getParameter("phn");
String department=request.getParameter("branch");

PreparedStatement ps=conn.prepareStatement("insert into teacher_registered (id,name,email,password,college,contact,department) values(?,?,?,?,?,?,?)");
Statement stmt=conn.createStatement();  
ResultSet rs=stmt.executeQuery("select * from id_entry"); 
int check=0;
 while(rs.next())
 {    
  String t_teach=rs.getString("id");
 if(t_teach.equalsIgnoreCase(id))   
 { 
ps.setString(1,id);
ps.setString(2,name);
ps.setString(3,email);
ps.setString(4,pass);
ps.setString(5,clg);
ps.setString(6,phn);
ps.setString(7,department);

int ans=ps.executeUpdate(); 
response.sendRedirect("Login.html");
check=1;
 break;
 }
 }
 if(check==0)
 response.sendRedirect("registerApproval.html");
      %>
    </body>
</html>
