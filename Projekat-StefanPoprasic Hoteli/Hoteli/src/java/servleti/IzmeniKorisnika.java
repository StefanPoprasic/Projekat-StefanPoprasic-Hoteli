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
public class IzmeniKorisnika extends HttpServlet {

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
            out.println("<title>Servlet IzmeniKorisnika</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet IzmeniKorisnika at " + request.getContextPath() + "</h1>");
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
            
        String idKorisnik=(String)request.getParameter("idKorisnik");
        String ime=(String)request.getParameter("ime");
        String prezime=(String)request.getParameter("prezime");
        String telefon=(String)request.getParameter("telefon");
        String username=(String)request.getParameter("username");
        String password=(String)request.getParameter("password");
        if(ime!=null && ime.length()>0 && prezime!=null && 
                prezime.length()>0 && telefon!=null && telefon.length()>0 && username!=null && 
                username.length()>0 && password!=null && password.length()>0 ){
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hoteli2","root","");
                Statement st=con.createStatement();
                st.executeUpdate("update korisnik set idKorisnik='"+idKorisnik+"',ime='"+ime+"',prezime='"+prezime+"',telefon='"+telefon+"',username='"+username+"',password='"+password+"'where idKorisnik='"+idKorisnik+"'");
                            
                st.close();
                con.close();
                request.setAttribute("msq","Izmena korisnika je uspesna");
                request.getRequestDispatcher("Korisnici").forward(request, response);
            }catch(ClassNotFoundException ex){
                
            }catch(SQLException sqle){
                String poruka=sqle.getMessage();
            }
        }else{
            request.setAttribute("msg","Morate popuniti sva polja!");
                    request.getRequestDispatcher("Korisnici").forward(request, response);
        }
    }

  

}
