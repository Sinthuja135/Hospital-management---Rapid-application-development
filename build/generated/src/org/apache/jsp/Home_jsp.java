package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("  <link rel=\"stylesheet\" href=\"css/headImage.css\">\n");
      out.write("  \n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  <title>Goshen Health|Home</title>\n");
      out.write("  <style>\n");
      out.write("* {\n");
      out.write("    box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write("[class*=\"col-\"] {\n");
      out.write("    float: left;\n");
      out.write("    padding: 15px;\n");
      out.write("}\n");
      out.write("#disc{\n");
      out.write("    padding-left: 30px;\n");
      out.write("    padding-right: 30px;\n");
      out.write("}\n");
      out.write("#subDiv1{\n");
      out.write("    \n");
      out.write("}\n");
      out.write("#subDiv2{\n");
      out.write("   font-size: 14px; \n");
      out.write("   background: url(header.jpg)100%  no-repeat;\n");
      out.write("   background-size: cover;\n");
      out.write("}\n");
      out.write("#subDiv3{\n");
      out.write("    \n");
      out.write("}\n");
      out.write("#homeDiv2{\n");
      out.write("    background-colour:red \n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("@media only screen and (max-width: 600px) {\n");
      out.write("    /* For mobile phones: */\n");
      out.write("    [class*=\"col-\"] {\n");
      out.write("        width: 100%;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("</style>\n");
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
      out.write("      <a class=\"active\" href=\"Home.jsp\" class=\"selected\">Home</a>\n");
      out.write("      <a href=\"contact.jsp\">Contact us</a>\n");
      out.write("      <a href=\"about.html\">About us</a>\n");
      out.write("      <a href=\"select1.jsp\">Find Your Doctor</a>\n");
      out.write("      <a href=\"channeling.jsp\">eChanneling</a>\n");
      out.write("      <a href=\"lab_report_detail.jsp\">Get Lab Report</a>\n");
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
      out.write("            <div class=\"container-fluid\">\n");
      out.write("  \n");
      out.write("  <div class=\"row\">\n");
      out.write("    <div class=\"col-sm-4\" style=\"background-color:lavender; height:300px;\">\n");
      out.write("        <h4>special services<h4/>\n");
      out.write("                        <ul>\n");
      out.write("                            <li> Oncology Unit</li><br>\n");
      out.write("                            <li>Urology Unit</li><br>\n");
      out.write("                            <li>Brain and Spine Center</li><br>\n");
      out.write("                            <li>Stroke Unit</li><br>\n");
      out.write("                            <li>Free dental care</li><br>\n");
      out.write("                        </ul> \n");
      out.write("    </div>\n");
      out.write("      \n");
      out.write("    <div class=\"col-sm-4\" style=\"background-color:lavenderblush;  height:300px;\">\n");
      out.write("        <h4>OPD opening hours</h4>\n");
      out.write("                    <table class=\"table table-striped\" style=\"background-colour:red \">\n");
      out.write("                        <tbody>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Monday - Friday</td>\n");
      out.write("                                <td>08.00 - 21.00</td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Saturday</td>\n");
      out.write("                                <td>09.00 - 21.00</td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Sunday</td>\n");
      out.write("                                <td>9.30 - 21.00</td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("    <div class=\"col-sm-4\" style=\"background-color:lavender;  height:300px;\">\n");
      out.write("        <h4>Protect your future and loved ones</h4>\n");
      out.write("                    <p>\n");
      out.write("                        Let us do all the hard work for you have peace of mind knowing that you and your family are covered for any event. We never wish for an injury or to fall ill but we all know it can happen so it is better to be prepared.\n");
      out.write("                        Our partners find policies for you to avoid NHS waiting times, so that you can focus more on recovering and less time waiting</p>\n");
      out.write("                \n");
      out.write("    </div>\n");
      out.write("      \n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("\n");
      out.write("            \n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"homeDiv3\">\n");
      out.write("\n");
      out.write("                <div class=\"col-4\" id=\"disc\">\n");
      out.write("                    <h2>We always put our pacients first</h2>\n");
      out.write("                    <p >Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\n");
      out.write("                        nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem \n");
      out.write("                        ipsum dolor sit amet, consectetuer adipiscing eli.</p>\n");
      out.write("                    <button class=\"btn btn-primary\">View the services</button>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-4\">\n");
      out.write("                    <div>\n");
      out.write("                        <img src=\"images/home1.jpg\" width=\"100px\" height=\"100px\">\n");
      out.write("                        <b style=\"font-size: 18px\">The Best Doctors</b>\n");
      out.write("                        <p>Lorem ipsum dolor sit amet, consecte tuer adipiscing elit, sed diam nonummy \n");
      out.write("                            nibh euismod tincidunt ut.</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <img src=\"images/home5.png\" width=\"75px\" height=\"75px\">\n");
      out.write("                        <b style=\"font-size: 18px\">The Best Specialities</b>\n");
      out.write("                        <p>Lorem ipsum dolor sit amet, consecte tuer adipiscing elit, sed diam nonummy \n");
      out.write("                            nibh euismod tincidunt ut.</p>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-4\">\n");
      out.write("                    <div>\n");
      out.write("                        <img src=\"images/home3.png\" width=\"100px\" height=\"100px\">\n");
      out.write("                        <b style=\"font-size: 18px\">Laboratory</b>\n");
      out.write("                        <p>Lorem ipsum dolor sit amet, consecte tuer adipiscing elit, sed diam nonummy \n");
      out.write("                            nibh euismod tincidunt ut.</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <img src=\"images/home4.png\" width=\"75px\" height=\"75px\">\n");
      out.write("                        <b style=\"font-size: 18px\">Emergency Room</b>\n");
      out.write("                        <p>Lorem ipsum dolor sit amet, consecte tuer adipiscing elit, sed diam nonummy \n");
      out.write("                            nibh euismod tincidunt ut.</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <footer>\n");
      out.write("\t\t<div class=\"Footer col-12\">\n");
      out.write("                                <div class=\"Footer4 col-3\">\n");
      out.write("                                    <div class=\"linkss\">\n");
      out.write("\t\t\t\t\t<b><p id=\"Footerhead\">e@Services</p></b>\n");
      out.write("                                        <a href=\"#\" id=\"link2\">Find Your Doctor</a><br><br>\n");
      out.write("\t\t\t\t\t<a href=\"#\" id=\"link2\">Find Lab Report</a><br><br>\n");
      out.write("\t\t\t\t\t<a href=\"#\" id=\"link2\">Inquiry</a><br><br>\n");
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
