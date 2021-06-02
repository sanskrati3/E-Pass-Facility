
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Student</title>
    </head>
    <body>
        <%
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/epassdb",
            "root", "admin"); 
  PreparedStatement ps=conn.prepareStatement("insert into student_registered (name,emailaddress,password,contact,id,department) values(?,?,?,?,?,?)");

String s_name=request.getParameter("name");
String s_email=request.getParameter("email");
String s_pass=request.getParameter("pass");
String s_phn=request.getParameter("phn");
String s_enroll=request.getParameter("enroll");
String s_branch=request.getParameter("branch");


Statement stmt=conn.createStatement();  
ResultSet rs=stmt.executeQuery("select * from s_id_entry"); 
int check=0;
 while(rs.next())
 {    
  String enroll=rs.getString("id");
 if(enroll.equalsIgnoreCase(s_enroll))   
 {   
ps.setString(1,s_name);
ps.setString(2,s_email);
ps.setString(3,s_pass);
ps.setString(4,s_phn);
ps.setString(5,s_enroll);
ps.setString(6,s_branch);

int ans=ps.executeUpdate(); 
response.sendRedirect("Login.html");
check=1;
 break;
 }
 }
 if(check==0)
 response.sendRedirect("registerStudent.html");
      %>
    </body>
</html>
