<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login page</title>
    </head>
    <body>
        <%
   Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/epassdb",
            "root", "admin"); 
    
String id=request.getParameter("enroll");
String h=request.getParameter("pass");

 if (id.equals("101") && h.equals("system")) 
         {
            response.sendRedirect("adminHome.html");
         } 
 else 
        {       
          response.sendRedirect("adminLogin.html");
        }
 %>
    </body>
</html>

