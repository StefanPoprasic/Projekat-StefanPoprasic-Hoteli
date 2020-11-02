package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Rezervisano_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <style>\n");
      out.write("         body{\n");
      out.write("            background-image: url(\"slike/8.jpg\");\n");
      out.write("            background-attachment: fixed;\n");
      out.write("            background-size: 100% 100%;\n");
      out.write("        }\n");
      out.write("        .form{\n");
      out.write("            border:4px solid white;\n");
      out.write("            background-color: black;\n");
      out.write("            width: 680px;\n");
      out.write("            height: 350px;\n");
      out.write("            margin: 350px 0px 0px 400px;\n");
      out.write("            position: absolute;\n");
      out.write("            font-size: 20px;\n");
      out.write("            color: white;\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            }\n");
      out.write("          \n");
      out.write("        \n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div class=\"form\">\n");
      out.write("            \n");
      out.write("        ");
 String msg= (String) request.getAttribute("msg");
                        if(msg != null && msg.length()>0){
                   
      out.write("\n");
      out.write("                        <h2><font color=\"white\">");
      out.print( msg);
      out.write("</font></h2>\n");
      out.write("                        ");
} 
      out.write("\n");
      out.write("                        <br>\n");
      out.write("                        <form action=\"Logovanje.jsp\" method=\"post\">\n");
      out.write("                            <h1>Uspesna rezervacija hotelske sobe</h1><br><br>\n");
      out.write("                            \n");
      out.write("                            <button>Odjava</button>                  \n");
      out.write("                        </form>\n");
      out.write("        </div>\n");
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
