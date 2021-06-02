<%@page import= "ePass.dbConnectDAO"%>
<%@ page import = "java.sql.*"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="homestyle.css" rel="stylesheet">
<title>Update Login Credentials</title>
</head>
<body>
        <%
        Connection con = null;
            try
            {
               
        
             Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/epassdb",
            "root", "admin");      
            String id1=(String)session.getAttribute("name");     
            Statement st = conn.createStatement();    
            
            PreparedStatement ps=  conn.prepareStatement("update student_registered set password=? where id=?");          
                      
                       
            String npass1=request.getParameter("npass1");
            String npass2=request.getParameter("npass2");
            
            if(npass2.equals(npass1))
            {
                ps.setString(1, npass2);
                ps.setString(2,id1);
                ps.executeUpdate();
                out.println("Password Updated");
                response.sendRedirect("home.jsp");
            }
            else
            {
                out.println("Password Does not match Try again");
             %>
             <h1><a href="changePassword.html">Try Again </a></h1>
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
</body>
</html>