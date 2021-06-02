<%@page import="ePass.dbConnectDAO"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD TEACHER</title>
    

    </head>
    <body>
        <%  
           
            Connection conn = dbConnectDAO.connect();            
            Statement st = conn.createStatement();    
            ResultSet rs; 
            PreparedStatement ps=  conn.prepareStatement("Insert into id_entry(name,id) values(?,?)");
            String s_id = request.getParameter("enroll");
            String s_name = request.getParameter("name");
            ps.setString(1,s_name);
            ps.setString(2,s_id);
            ps.executeUpdate();
            
          
        %>
    </body>
</html>