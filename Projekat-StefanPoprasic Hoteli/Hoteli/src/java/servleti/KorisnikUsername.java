/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import beans.Korisnik;
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
public class KorisnikUsername extends HttpServlet {

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
            out.println("<title>Servlet KorisnikUsername</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet KorisnikUsername at " + request.getContextPath() + "</h1>");
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
          String username=(String)request.getParameter("username");
        ArrayList<Korisnik> users = new ArrayList<>();
        
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hoteli2", "root", "");
            Statement stmt=con.createStatement();
            String upit="select korisnik.idKorisnik,korisnik.ime,korisnik.prezime,korisnik.telefon,korisnik.poeni,korisnik.cena,korisnik.idHotel,korisnik.idSoba,hotel.ime,soba.tipSobe from korisnik inner join hotel,soba where korisnik.idHotel=hotel.idHotel and korisnik.idSoba=soba.idSoba and korisnik.username='"+username+"'";
          ResultSet rs=stmt.executeQuery(upit);
            while(rs.next()){
                Korisnik user = new Korisnik();
                int idKorisnik = rs.getInt("idKorisnik");
                String ime = rs.getString("ime");
                String prezime = rs.getString("prezime");
                int telefon = rs.getInt("telefon");
                int poeni=rs.getInt("poeni");
                int cena=rs.getInt("cena");
                int idHotel=rs.getInt("idHotel");
                int idsoba=rs.getInt("idSoba");
                String imeHotel=rs.getString("hotel.ime");
                String tipSobe=rs.getString("soba.tipSobe");
                
                
                user.setTipSobe(tipSobe);
                user.setImeHotel(imeHotel);
                user.setIdKorisnik(idKorisnik);
                user.setIme(ime);
                user.setPrezime(prezime);
                user.setTelefon(telefon);
                user.setPoeni(poeni);
                user.setCena(cena);
                user.setIdHotel(idHotel);
                user.setIdsoba(idsoba);
                users.add(user);
                sesija.setAttribute("user", user);
            }
            sesija.setAttribute("users",users);
            request.getRequestDispatcher("PodaciKorisnika.jsp").forward(request, response);
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
