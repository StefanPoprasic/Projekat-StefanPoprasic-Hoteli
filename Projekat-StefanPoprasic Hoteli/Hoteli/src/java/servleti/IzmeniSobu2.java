/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

/**
 *
 * @author Poprasic
 */
public class IzmeniSobu2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet IzmeniSobu2</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet IzmeniSobu2 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String idSoba=(String)request.getParameter("idSoba");
        String tipSobe=(String)request.getParameter("tipSobe");
        String cena=(String)request.getParameter("cena");
        String idHotel="5";
   
        if(idHotel!=null && idHotel.length()>0 && tipSobe!=null && tipSobe.length()>0
                && idSoba!=null && idSoba.length()>0 && cena!=null && cena.length()>0){
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hoteli2", "root", "");
                Statement st=con.createStatement();
                st.executeUpdate("update soba set idSoba='"+idSoba+"',tipSobe='"+tipSobe+"',idHotel='"+idHotel+"',cena='"+cena+"'where idSoba='"+idSoba+"'");
                st.close();
                con.close();
                request.setAttribute("msq","Izmena soba je uspesna");
                request.getRequestDispatcher("Menadzer2").forward(request, response);
                
            }catch(ClassNotFoundException ex){}
            catch(SQLException sqle){
                String poruka=sqle.getMessage();
            }
        }else{
            request.setAttribute("msg","Morate popuniti sva polja!");
            request.getRequestDispatcher("Menadzer2").forward(request, response);
        }
    }

 

}
