package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;

public final class lab_005freport_005fdetail_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("  \n");
      out.write("  <link rel=\"stylesheet\" href=\"http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/Footer.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/header.css\">\n");
      out.write("  \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div class=\"headercont\">\n");
      out.write("  <!--header-->\n");
      out.write("  <div class=\"logod\">\n");
      out.write("    <img src=\"images/logo.png\" class=\"logo\" height=\"70px\">\n");
      out.write("    \n");
      out.write("        \n");
      out.write("            ");

            if(session.getAttribute("uname")!=null){
                                    
               try{
                Class.forName("com.mysql.jdbc.Driver");        
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaldb","root","");
                Statement stmt = con.createStatement();
                String q="select* from doctor where username='"+session.getAttribute("uname")+"'";
                ResultSet rs = stmt.executeQuery(q);

              if(rs.next()){
                String name=rs.getString("doctorName");
                out.println("<h4 class='logdis'> "+name+"<h4>");
                
             }
          }catch(Exception e){

                out.println(e.getMessage());
            }
        }
           
         else{
              out.println("<h4 class='logdis'>Live Your Healthy<h4>");}
            
      out.write("\n");
      out.write("        \n");
      out.write("  </div>\n");
      out.write("  <!--navigation bars-->\n");
      out.write("  <div class=\"header\">\n");
      out.write("    <div class=\"header-right\">\n");
      out.write("      <a class=\"active\" href=\"Home.jsp\">Home</a>\n");
      out.write("      <a href=\"contact.jsp\">Contact us</a>\n");
      out.write("      <a href=\"about.html\">About us</a>\n");
      out.write("      <a href=\"select1.jsp\">Find Your Doctor</a>\n");
      out.write("      <a href=\"channeling.jsp\">eChanneling</a>\n");
      out.write("       <a href=\"report_lab.jsp\">Get Lab Report</a>\n");
      out.write("    </div>\n");
      out.write("      ");

         if(session.getAttribute("uname")!=null){
            //out.println("<a href='logout.jsp'> Logout</a>");
            out.println("<form action='logout.jsp'><button class='btn1'>Logout</button></form>");
           }else{
            out.println("<form action='login.html'><button class='btn1'>Login</button></form>");
            }
            
      out.write("\n");
      out.write("      \n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("         <div class=\"container\" style=\"background-color:#e6f2ff\">\n");
      out.write("            <h1> Report Detail </h1>     \n");
      out.write("            <form action=\"view_status.jsp\" method=\"post\"  >\n");
      out.write("    \n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-sm-3\" for=\"name\">Patient Id</label>\n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" id=\"pid\" placeholder=\"Enter patient id\" name=\"pid\" required=\"required\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("       \n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-sm-3\" for=\"fname\">first Name</label>\n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"name\" placeholder=\"Enter patient firstname\" name=\"fname\" required=\"required\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("       \n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-sm-3\" for=\"lname\">last Name</label>\n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"name\" placeholder=\"Enter patient lastname\" name=\"lname\" required=\"required\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-sm-3\" for=\"bno\">Bill No</label>\n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"bno\" placeholder=\"Enter bill Number\" name=\"bno\" required=\"required\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("       \n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label col-sm-3\" for=\"image\">Report</label>\n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("                    <input type=\"file\" class=\"form-control\" id=\"image\" placeholder=\"Upload image\" name=\"image\" required=\"required\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("        \n");
      out.write("                <div class=\"form-group\">        \n");
      out.write("                    <div class=\"col-sm-offset-3 col-sm-3\">\n");
      out.write("                    <input type=\"submit\" class=\"btn btn-default\" name=\"submit\" value=\"Submit\" >\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("       \n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("        \n");
      out.write("   \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("\n");
      out.write("            <footer>\n");
      out.write("\t\t<div class=\"Footer col-12\">\n");
      out.write("                                <div class=\"Footer4 col-3\">\n");
      out.write("                                    <div class=\"linkss\">\n");
      out.write("\t\t\t\t\t<b><p id=\"Footerhead\">eServices</p></b>\n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                        <a class=\"active\" href=\"Home.jsp\" id=\"link2\">Home</a><br><br>\n");
      out.write("                                        <a href=\"contact.jsp\" id=\"link2\">Contact us</a><br><br>\n");
      out.write("                                        <a href=\"select1.jsp\" id=\"link2\">Find Your Doctor</a><br><br>\n");
      out.write("                                        <a href=\"channeling.jsp\" id=\"link2\">eChanneling</a><br><br>\n");
      out.write("                                        <a href=\"report_lab.jsp\">Get Lab Report</a>\n");
      out.write("                                    </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<div class=\"Footer3 col-3\">\n");
      out.write("\t\t\t\t\t\t<b><p id=\"Footerhead\">Conect with Us</p></b>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" id=\"link1\" target=\"_blank\"><img src=\"images/fb.png\" alt=\"Facebook\" width=\"20%\" height=\"20%\" ></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" id=\"link1\" target=\"_blank\"><img src=\"images/twitter.png\" alt=\"Twitter\" width=\"20%\" height=\"20%\"></a>\n");
      out.write("\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" id=\"link1\" target=\"_blank\"><img src=\"images/google.png\" alt=\"Google\" width=\"20%\" height=\"20%\"></a>\n");
      out.write("\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"Footer2 colu-3\">\n");
      out.write("\t\t\t\t\t\t<b><p id=\"Footerhead\">Find Us</p></b>\n");
      out.write("\t\t\t\t\t\t<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.2283057070813!2d81.07561229554683!3d6.982363167274395!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae4618a1a9fec37%3A0x1dd900702229654b!2sUva+Wellassa+University!5e0!3m2!1sen!2slk!4v1511197231475\"  width=\"90%\" height=\"100%\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\n");
      out.write("                                <div class=\"Footer1 col-3\">\n");
      out.write("\t\t\t\t\t<b><p id=\"Footerhead\">Contact Us</p></b>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\tGoshen Health Hospital<br>\n");
      out.write("\t\t\t\t\t\tKadawatha Road,<br>\n");
      out.write("\t\t\t\t\t\tRagama.<br><br>\n");
      out.write("                                                Phone : +94 11 2255 255<br>\n");
      out.write("\t\t\t\t\t\tEmergency : +94 11 2200 200<br>\n");
      out.write("\t\t\t\t\t\tEmail :goshenhealth@gmail.com<br>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</footer>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("</body>\n");
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
