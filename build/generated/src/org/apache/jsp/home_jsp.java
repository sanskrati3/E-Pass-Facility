package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ePass.dbConnectDAO;
import java.sql.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css\">\n");
      out.write("\t<link href=\"http://fonts.googleapis.com/css?family=Cookie\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link href=\"homestyle.css\" rel=\"stylesheet\">\n");
      out.write("   \n");
      out.write("\n");
      out.write("\n");
     
                  
            Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/epassdb",
            "root", "admin");        
            String id1=(String)session.getAttribute("name");     
            Statement st = conn.createStatement();    
            ResultSet rs; 
            PreparedStatement ps=  conn.prepareStatement("Select * from student_registered where id=?");          
            ps.setString(1, id1);           
            rs = ps.executeQuery();           
            if(rs.next())
            {
            
      out.write("\n");
      out.write("          \n");
      out.write("<div class=\"topnav\">\n");
      out.write("  <a class=\"active\" href=\"#home\">Lakshmi Narain College of Technology</a>\n");
      out.write("  <a href=\"#news\">ID<br>");
      out.print(rs.getString("id"));
      out.write("</a>\n");
      out.write("      <a href=\"#contact\">Departement <br>");
      out.print(rs.getString("department"));
      out.write("</a>\n");
      out.write("  <a href=\"#about\">");
      out.print(rs.getString("name"));
      out.write("</a>\n");
      out.write("  <a href=\"Login.html\"> <i class=\"fa fa-power-off\" style=\"font-size:38px;color:green;margin-left:650px;margin-top: 15px\"></i></a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div style=\"padding-left:16px\">\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"mySidenav\" class=\"sidenav\">\n");
      out.write("  <a href=\"javascript:void(0)\" class=\"closebtn\" onclick=\"closeNav()\">&times;</a>\n");
      out.write("  <a href=\"home.jsp\">Dashboard</a>\n");
      out.write("  <a href=\"studentProfile.jsp\">Your Profile</a>\n");
      out.write("  <a href=\"Login.html\">Logout</a>\n");
      out.write("   <a href=\"changePassword.html\">change password</a>\n");
      out.write("  <a href=\"contact.html\">Contact</a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<span style=\"font-size:30px;cursor:pointer\" onclick=\"openNav()\">&#9776; open</span>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("function openNav() {\n");
      out.write("  document.getElementById(\"mySidenav\").style.width = \"250px\";\n");
      out.write("}\n");
      out.write("\n");
      out.write("function closeNav() {\n");
      out.write("  document.getElementById(\"mySidenav\").style.width = \"0\";\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("  \n");
      out.write("<p class=\"one\"> <a href=\"requestPassForm.jsp\" style=\"text-decoration: none;\">Request Gate pass</a></p>\n");
      out.write("<p class=\"two\"><a href=\"approvedPassStudent.jsp\" style=\"text-decoration: none;\">Approved Gate Pass</a></p>\n");
      out.write("<p class=\"three\"><a href=\"rejectedPassStudent.jsp\" style=\"text-decoration: none;\">Rejected Gate pass</a></p>\n");
      out.write("<p class=\"four\"><a href=\"pendingPassStudent.jsp\" style=\"text-decoration: none;\">Pending Gate pass</a></p> \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div style=\"margin-top: 600px;font-size: 20px\"> <a href=\"Login.html\" class=\"previous\" style=\" display: inline-block; padding: 8px 16px; background-color: #4CAF50;\n");
      out.write("  color: white;\">&laquo; Previous</a></div>\n");
      out.write("\n");
      out.write("\n");
      out.write(" \t\n");
      out.write("</body>\n");
      out.write("</html> \n");

}

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
