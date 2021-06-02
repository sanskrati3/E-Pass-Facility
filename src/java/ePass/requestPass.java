
package ePass;

import static ePass.dbConnectDAO.connect;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class requestPass extends HttpServlet {
  Connection conn=connect();
 RequestDispatcher rd=null;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet requestPass</title>");            
            out.println("</head>");
            out.println("<body>");
            
     try
            {
      //  Class.forName("oracle.jdbc.OracleDriver");
     //Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@//aakrati-pc:1521/XE","ePass","gateway");         
     
            Statement st = conn.createStatement();
            ResultSet rs; 
            PreparedStatement ps=  conn.prepareStatement("Insert into req_pass(date_pass_apply,reason_for_apply,time) values(?,?,?)");
            String a_date=request.getParameter("a_date");
            String time=request.getParameter("time");
            String reason=request.getParameter("reason");
            String enroll=request.getParameter("enroll");
                
            System.out.println(a_date);
            System.out.println(time);
            System.out.println(reason);
            System.out.println(enroll);
         
            ps.setString(1,a_date);
            ps.setString(2,reason);
            ps.setString(3,time);
            ps.executeUpdate();
            
           
         PreparedStatement ps1=  conn.prepareStatement("Insert into req_pass(name,id,department,email,contact) select s_name,s_enroll,s_branch,s_email,s_phn from s_register where s_enroll=?");
         ps1.setString(1,enroll);
         ps1.executeUpdate();
          
            
    }
      
           catch(SQLException ex)
         { 
           System.out.println("sorry problem with database");
          System.out.println(ex.getMessage());
          }
    
         finally
         {
        if(conn!=null) 
        
        try
        { 
        conn.close();
        System.out.println("Connection sucessfully closed");
        }
        catch(SQLException ex)
        { 
        System.out.println("sorry problem with database");
        System.out.println(ex.getMessage());
   
        }

         }
        
        }
    }
        

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
        
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
