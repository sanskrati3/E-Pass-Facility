<%@page import="java.sql.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
        Connection con = null;
            try
            {
                String id=request.getParameter("id");
               Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/epassdb",
            "root", "admin");  
            Statement st = conn.createStatement();
             st.executeUpdate("update epass set status ='rejected' where gatepsno ='"+id+"'");
             response.sendRedirect("preApproval.jsp");
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
        
        
        
        
        
        
    </body>
</html>