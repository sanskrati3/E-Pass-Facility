package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class homeApproval_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link href=\"homestyle.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write(" \n");
      out.write("    \n");
      out.write("<div class=\"topnav\">\n");
      out.write("  <a class=\"active\" href=\"#home\">Lakshmi Narain College of Technology</a>\n");
      out.write("  <a href=\"#news\">Enrollment No<br>v </a>\n");
      out.write("      <a href=\"#contact\">Class <br>vv</a>\n");
      out.write("  <a href=\"#about\">vb</a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div style=\"padding-left:16px\">\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"mySidenav\" class=\"sidenav\">\n");
      out.write("  <a href=\"javascript:void(0)\" class=\"closebtn\" onclick=\"closeNav()\">&times;</a>\n");
      out.write("  <a href=\"home.html\">Dashboard</a>\n");
      out.write("  <a href=\"#\">Your Profile</a>\n");
      out.write("  <a href=\"#\">Logout</a>\n");
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
      out.write("<p class=\"one\"> <a href=\"requestPass.html\" style=\"text-decoration: none;\">Request Gate pass</a></p>\n");
      out.write("<p class=\"two\"><a href=\"approved.html\" style=\"text-decoration: none;\">Approved Gate Pass</a></p>\n");
      out.write("<p class=\"three\"><a href=\"rejected.html\" style=\"text-decoration: none;\">Rejected Gate pass</a></p>\n");
      out.write("<p class=\"four\"><a href=\"pending.html\" style=\"text-decoration: none;\">Pending Gate pass</a></p>\n");
      out.write("\n");
      out.write("     \n");
      out.write("</body>\n");
      out.write("</html> \n");
      out.write("\n");
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
