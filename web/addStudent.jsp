
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD STUDENT</title>
  
    </head>
    <body>
        <%  
         Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/epassdb",
            "root", "admin");            
            Statement st = conn.createStatement();    
            ResultSet rs; 
            PreparedStatement ps=  conn.prepareStatement("Insert into s_id_entry(name,id) values(?,?)");
            String s_id = request.getParameter("enroll");
            String s_name = request.getParameter("name");
            ps.setString(1,s_name);
            ps.setString(2,s_id);
            ps.executeUpdate();
            
          
        %>
    </body>
</html>