/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import beans.Soba;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Poprasic
 */
public class Menadzer1 extends HttpServlet {

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
            out.println("<title>Servlet Menadzer1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Menadzer1 at " + request.getContextPath() + "</h1>");
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
        HttpSession sesija = request.getSession();
        ArrayList<Soba> sobe = new ArrayList<>();
        
        
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hoteli2", "root", "");
            Statement stmt=con.createStatement();
            String upit="select soba.idSoba,soba.tipSobe,soba.idHotel,soba.cena,hotel.ime from Soba inner join hotel where soba.idHotel=hotel.idHotel and soba.idHotel='2'";
          ResultSet rs=stmt.executeQuery(upit);
            while(rs.next()){
                Soba soba = new Soba();
                int idSoba = rs.getInt("idSoba");
                String tipSobe = rs.getString("tipSobe");
                String ime=rs.getString("hotel.ime");
                int idHotel=rs.getInt("idHotel");
                int cena=rs.getInt("cena");
                
                soba.setCena(cena);
                soba.setIdSoba(idSoba);
                soba.setTipSobe(tipSobe);
                soba.setIme(ime);
                soba.setIdHotel(idHotel);
                sobe.add(soba);
                
                sesija.setAttribute("soba", soba);
            }
            sesija.setAttribute("sobe",sobe);
            request.getRequestDispatcher("Menadzer1.jsp").forward(request, response);
        }
        catch(SQLException e){
          sesija.invalidate();
          
          if(con!=null)
              try{
                  con.close();
              }catch(SQLException ex){
                  
              }
          
      }catch(ClassNotFoundException cnf){}
    }

   

}
