<%@ page import = "java.sql.*"%>
<%@ page import = "java.lang.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success fully Applied</title>
   
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
     </head>
    <body>
        <%
            Connection con = null;
            try
            {
         
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/epassdb",
            "root", "admin");
            Statement st = con.createStatement();
            String gpno="";
            String n="";
            String i="";
            String d="";
            String e="";
            String c="";
            String enroll=request.getParameter("enroll");
            String a_date=request.getParameter("a_date");
            String time=request.getParameter("time");
            String reason=request.getParameter("reason");
            ResultSet rs = st.executeQuery("select Max(gatepsno) from epass");
             rs.next();
             rs.getString("MAX(gatepsno)");
             if(rs.getString("MAX(gatepsno)")==null)
             {
                 gpno="GPN-0000001";
                 
             }
             else{
             long gt=Long.parseLong(rs.getString("MAX(gatepsno)").substring(4,rs.getString("MAX(gatepsno)").length()));
             gt++;
             gpno="GPN-"+String.format("%07d",gt);
             }
             
            PreparedStatement ps2=con.prepareStatement("insert into epass (gatepsno) values(?)");
            ps2.setString(1,gpno);
            ps2.executeUpdate();
            
            //to get data from student_registered
            
            
            PreparedStatement ps3=con.prepareStatement("select name,id,department,emailaddress,contact from student_registered where id =?");
            ps3.setString(1, enroll);
            ResultSet rs1=ps3.executeQuery();
            while(rs1.next())
            {
            n =rs1.getString("name");
            i =rs1.getString("id");
            d =rs1.getString("department");
            e =rs1.getString("emailaddress");
            c =rs1.getString("contact");
            }
            
            PreparedStatement ps4= con.prepareStatement("update epass set name=?,id=?,department=?,email=?,contact=? where gatepsno=?");
            ps4.setString(1,n);
            ps4.setString(2,i);
            ps4.setString(3,d);
            ps4.setString(4,e);
            ps4.setString(5,c);
            ps4.setString(6,gpno);            
            ps4.executeUpdate();
       
              
           PreparedStatement ps1=  con.prepareStatement("update epass set date_pass_valid=?,reason_for_pass =? where gatepsno=?");
           ps1.setString(1,a_date);          
           ps1.setString(2,reason);
           ps1.setString(3,gpno);
           ps1.executeUpdate();
          
            
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
        <p>We Have Received your E-Pass request;<br/> We'll be Informing You shortly!<br/>ComeBack Later For New Update </p>
      </div>
    <centre>   <button onClick="parent.location='home.jsp'"class="btn"> <i class="fa fa-home"></i> Home</button></centre>
    </body>
</html>