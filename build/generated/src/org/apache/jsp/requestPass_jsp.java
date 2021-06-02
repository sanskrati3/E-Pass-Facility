package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class requestPass_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"setdatarequesgpass.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Success fully Applied</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("      body {\n");
      out.write("        text-align: center;\n");
      out.write("        padding: 40px 0;\n");
      out.write("        background: #EBF0F5;\n");
      out.write("      }\n");
      out.write("        h1 {\n");
      out.write("          color: #88B04B;\n");
      out.write("          font-family: \"Nunito Sans\", \"Helvetica Neue\", sans-serif;\n");
      out.write("          font-weight: 900;\n");
      out.write("          font-size: 40px;\n");
      out.write("          margin-bottom: 10px;\n");
      out.write("        }\n");
      out.write("        p {\n");
      out.write("          color: #404F5E;\n");
      out.write("          font-family: \"Nunito Sans\", \"Helvetica Neue\", sans-serif;\n");
      out.write("          font-size:20px;\n");
      out.write("          margin: 0;\n");
      out.write("        }\n");
      out.write("      i {\n");
      out.write("        color: #9ABC66;\n");
      out.write("        font-size: 100px;\n");
      out.write("        line-height: 200px;\n");
      out.write("        margin-left:-15px;\n");
      out.write("      }\n");
      out.write("      .card {\n");
      out.write("        background: white;\n");
      out.write("        padding: 60px;\n");
      out.write("        border-radius: 4px;\n");
      out.write("        box-shadow: 0 2px 3px #C8D0D8;\n");
      out.write("        display: inline-block;\n");
      out.write("        margin: 0 auto;\n");
      out.write("      }\n");
      out.write("      .btn {\n");
      out.write("       background-color: lightgreen;\n");
      out.write("       border: none;\n");
      out.write("       color: white;\n");
      out.write("       padding: 12px 16px;\n");
      out.write("       font-size: 16px;\n");
      out.write("       cursor: pointer;\n");
      out.write("       margin: 0 auto;\n");
      out.write("           }\n");
      out.write("\n");
      out.write("/* Darker background on mouse-over */\n");
      out.write("      .btn:hover {\n");
      out.write("       background-color: Green;\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        ");

            Connection con = null;
            try
            {
               
        
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/epassdb",
            "root", "admin");
            Statement st = con.createStatement();
            ResultSet rs; 
            PreparedStatement ps=  con.prepareStatement("Insert into epass(name,id,department,email,contact)"+"select name, id, department,email, contact from student_registered where id =?");
            String enroll=request.getParameter("enroll");
            ps.setString(1, enroll);
            
            String a_date=request.getParameter("a_date");
            String time=request.getParameter("time");
            String reason=request.getParameter("reason");
       
            ps.executeUpdate();
        
           PreparedStatement ps1=  con.prepareStatement("update epass set date_pass_valid=?,"+"reason_for_pass = ? where id =?");
           ps1.setString(1,a_date);          
           ps1.setString(2,reason);
           ps1.setString(3,enroll);
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
    

      out.write("\n");
      out.write("     <div class=\"card\">\n");
      out.write("      <div style=\"border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;\">\n");
      out.write("        <i class=\"checkmark\">✓</i>\n");
      out.write("      </div>\n");
      out.write("        <h1>Success</h1> \n");
      out.write("        <p>We received your E-Pass request;<br/> We'll be Review shortly! Come Back Later for new Update</p>\n");
      out.write("      </div>\n");
      out.write("     <button onClick=\"parent.location='home.jsp'\"class=\"btn\"> <i class=\"fa fa-home\"></i> Home</button>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
