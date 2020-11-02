/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Poprasic
 */
public class Login extends HttpServlet {

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
            out.println("<title>Servlet Login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
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
          HttpSession sesija=request.getSession();
        String username=(String)request.getParameter("username");
        String password=(String)request.getParameter("password");
        String admin="admin";
        String admin2="admin2";
        String menadzer1="menadzer1";
        String menadzer2="menadzer2";
        String menadzer3="menadzer3";
        if(username.isEmpty() || password.isEmpty()){
            request.setAttribute("Poruka", "Morate popuniti sva polja");
            request.getRequestDispatcher("logovanje.jsp").forward(request, response);
        }else{
            Connection con=null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hoteli2","root","");
                Statement stmt=con.createStatement();
                String upit="SELECT * FROM korisnik WHERE username='"+username
                        +"'and password='"+password+"';";
                ResultSet rs=stmt.executeQuery(upit);
                if(rs.next()){
                    if(username.equals(admin) || username.equals(admin2)){
                    sesija.setAttribute("poruka", username);
                    request.getRequestDispatcher("Admin.jsp").forward(request, response);
                }
                   else if(username.equals(menadzer1)){
                  sesija.setAttribute("message",username);
                  request.getRequestDispatcher("Menadzer1").forward(request, response);  
              }  
                    else if(username.equals(menadzer2)){
                  sesija.setAttribute("message",username);
                  request.getRequestDispatcher("Menadzer2").forward(request, response);  
              } else{
                        sesija.setAttribute("message",username);
                        request.getRequestDispatcher("KorisnikUsername").forward(request, response);
                    }
                }
            }catch(SQLException e){
                sesija.invalidate();
                if(con!=null)
                    try{
                        con.close();
                    }catch(SQLException ex){}
            }catch(ClassNotFoundException cnf){}
        }
    }


}
