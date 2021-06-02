<%-- 
    Document   : forgotPass
    Created on : Oct 26, 2020, 10:16:41 PM
    Author     : ASUS
--%>
<%@ page import ="java.sql.*" %>
<%@ page import ="com.email.durgesh.Email"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
       
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Resetter</title>
    </head>
      <style>
      body {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
      }
        h1 {
          color: #88B04B;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        
      }
      .btn {
       background-color: lightgreen;
       border: none;
       color: white;
       padding: 12px 16px;
       font-size: 16px;
       cursor: pointer;
       
       
   
           }

/* Darker background on mouse-over */
      .btn:hover {
       background-color: Green;
      }
      
    </style>
    <body>
       <% 
       Connection con = null;
            try
            {
                        
            Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/epassdb",
            "root", "admin");    
            Statement st = conn.createStatement();
            ResultSet rs; 
            PreparedStatement ps=  conn.prepareStatement("update student_registered set password=? where id=?");
            String email=request.getParameter("email");
            String enrollm=request.getParameter("enrollm");
            
            //password generation
            String password = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                           + "0123456789"
                           + "abcdefghijklmnopqrstuvxyz"; 
  
        // create StringBuffer size of password 
        StringBuilder sb = new StringBuilder(8); 
        for (int i = 0; i < 8; i++) { 
  
            // generate a random number between 
            // 0 to password variable length 
            int index = (int)(password.length()* Math.random()); 
  
            // add Character one by one in end of sb 
        sb.append(password.charAt(index));
        }
        
        String pa=sb.toString();
            
            
            ps.setString(1,pa);
            ps.setString(2,enrollm);
            ps.executeUpdate();
            //Email em= new Email("guywhimpered@gmail.com","9425006629");
           Email em= new Email("asha74823@gmail.com","ilove74823");
            em.setFrom("asha74823@gmail.com","NPS Pass");
            em.setSubject("Password Changed");
            String s="<h1>Your Password Has been resetted successfully.... and your new password is : "+pa+"</h1>";
            em.setContent(s,"text/html");
            em.addRecipient(email);
            em.send();
            
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
       <div class="card">
      <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
        <i class="checkmark">✓</i>
      </div>
        <h1>Success</h1> 
        <p>We Have Sent You a mail <br/> with a new password<br/> please use the given password to login. </p>
      </div>
    <center> <button onClick="parent.location='Login.html'"class="btn"> <i class="fa fa-home"></i> Home</button></center>
    </body>
</html>