package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/registration.css\"> \n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\n");
      out.write("   <link rel=\"stylesheet\" href=\"http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css\">\n");
      out.write("   <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("   <link rel=\"stylesheet\" href=\"css/Footer.css\">\n");
      out.write("   <link rel=\"stylesheet\" href=\"css/header.css\">\n");
      out.write("   <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write(" \n");
      out.write("    <style>\n");
      out.write("           body{\n");
      out.write("        background-color:#f2f2f2;\n");
      out.write("        background:url(./images/adminpage_1.jpg) no-repeat center fixed; \n");
      out.write("        background-size: cover;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("   <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("   <!---------------------------------------header-------------------------------------------------> \n");
      out.write("    \n");
      out.write("   <div class=\"headercont\">\n");
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
      out.write("      <a href=\"channeling.jsp\">E-Channeling</a>\n");
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
      out.write("    \n");
      out.write("    \n");
      out.write("    <!----------------------------------------Admin------------------------------------------------------>\n");
      out.write("    <form action=\"removeusers.jsp\">\n");
      out.write("        <input type=\"submit\" name=\"remove\" value=\"Remove Users\" style=\"float: right;padding-right:20px;margin-right: 20px;\">\n");
      out.write("    </form>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <script>\n");
      out.write("          \n");
      out.write("            var letters = ['a','b','c','d','e','f','g','h','i','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];\n");
      out.write("    var numbers = [0,1,2,3,4,5,6,7,8,9];\n");
      out.write("    var randomstring = '';\n");
      out.write("\n");
      out.write("        for(var i=0;i<5;i++){\n");
      out.write("            var rlet = Math.floor(Math.random()*letters.length);\n");
      out.write("            randomstring += letters[rlet];\n");
      out.write("        }\n");
      out.write("        for(var i=0;i<3;i++){\n");
      out.write("            var rnum = Math.floor(Math.random()*numbers.length);\n");
      out.write("            randomstring += numbers[rnum];\n");
      out.write("        }\n");
      out.write("     //alert(randomstring);\n");
      out.write("    // document.write(randomstring);\n");
      out.write("     \n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("<h1>User Registration</h1>\n");
      out.write("<!--*************************Doctor Registration ***************************-->\n");
      out.write("<div class=\"formDiv\">\n");
      out.write("    \n");
      out.write("        <div class=\"docreg\">\n");
      out.write("                <p id=\"reghead\" style=\"font-size: 30px;\">Doctors Registration</p>\n");
      out.write("\n");
      out.write("                <form action=\"registration.jsp\">\n");
      out.write("                  <!-- <label for=\"lname\">User Category</label><br> -->\n");
      out.write("                  <input type=\"hidden\" id=\"fname\" name=\"userCatagory\" value=\"Doctor\" >\n");
      out.write("\n");
      out.write("                  <label for=\"fname\">Name with Initials</label><br>\n");
      out.write("                  <input type=\"text\" id=\"fname\" name=\"fname\" class=\"form-control\" required>\n");
      out.write("\n");
      out.write("                  <label for=\"fname\">Specialization</label><br>\n");
      out.write("                   <select name=\"Specialisation\" class=\"form-control\" style=\"width:80%;\">\n");
      out.write("                      <option value=\"Physician\">Physician</option>\n");
      out.write("                      <option value=\"Surgeon\">Surgeon</option>\n");
      out.write("                      <option value=\"Pediatrician\">Pediatrician</option>\n");
      out.write("                      <option value=\"Gynecologist\">Gynecologist</option>\n");
      out.write("                      <option value=\"Psychiatrist\">Psychiatrist</option>\n");
      out.write("                      <option value=\"Cardiologist\">Cardiologist</option>\n");
      out.write("                      <option value=\"Endocrinologist\">Endocrinologist</option>\n");
      out.write("                      <option value=\"Neurologist\">Neurologist</option>\n");
      out.write("                    </select>\n");
      out.write("\n");
      out.write("                  <label for=\"fname\">Details</label><br>\n");
      out.write("                  <label for=\"comment\" style=\"font-size: 14px;color: black;\">(Please fill out this field.)</label><br>\n");
      out.write("                  <input type=\"text\" id=\"fname\" name=\"details\" placeholder=\"MBBS\" class=\"form-control\">\n");
      out.write("\n");
      out.write("                  <label for=\"lname\">Channeling Day</label><br>\n");
      out.write("\n");
      out.write("                    <select name=\"channelingDay\" class=\"form-control\" style=\"width:80%;\">\n");
      out.write("\n");
      out.write("                      <option>Select Channeling Day</option>          \n");
      out.write("                      <option value=\"Sunday\">Sunday</option>\n");
      out.write("                      <option value=\"Monday\">Monday</option>\n");
      out.write("                      <option value=\"Tuesday\">Tuesday</option>\n");
      out.write("                      <option value=\"Wednesday\">Wednesday</option>\n");
      out.write("                      <option value=\"Thursday\">Thursday</option>\n");
      out.write("                      <option value=\"Friday\">Friday</option>\n");
      out.write("                      <option value=\"Saturday\">Saturday</option>\n");
      out.write("\n");
      out.write("                    </select>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                  <label for=\"lname\">Channeling Time</label><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("                  <input type=\"text\" id=\"time\" name=\"from\" class=\"time\" placeholder=\"From\" style=\"width:20%;\" required>\n");
      out.write("                    <select name=\"fromampm\" class=\"time\" style=\"width:15%;padding:10px;\">\n");
      out.write("                      <option value=\"AM\">AM</option>\n");
      out.write("                      <option value=\"PM\">PM</option>\n");
      out.write("                    </select>\n");
      out.write("                  <input type=\"text\" id=\"time\" name=\"to\" class=\"time\" placeholder=\"to\" style=\"width:20%;\" required>\n");
      out.write("                    <select name=\"toampm\" class=\"time\" style=\"width:15%;padding:10px; \">\n");
      out.write("                      <option value=\"AM\">AM</option>\n");
      out.write("                      <option value=\"PM\">PM</option>\n");
      out.write("                    </select>\n");
      out.write("\n");
      out.write("                   <br> \n");
      out.write("\n");
      out.write("                   <label for=\"lname\">Charges</label><br>\n");
      out.write("                  <input type=\"text\" id=\"lname\" name=\"doctorCharge\" class=\"form-control\">\n");
      out.write("\n");
      out.write("                  <label for=\"lname\">Mobile</label><br>\n");
      out.write("                  <input type=\"text\" id=\"lname\" name=\"Mobile\" class=\"form-control\">\n");
      out.write("\n");
      out.write("                  <label for=\"lname\">Email</label><br>\n");
      out.write("                  <input type=\"Email\" id=\"lname\" name=\"Email\" class=\"form-control\" required>\n");
      out.write("\n");
      out.write("                  <label for=\"lname\">Gender</label>\n");
      out.write("                    <input type=\"radio\" name=\"gender\" value=\"male\" checked> Male\n");
      out.write("                    <input type=\"radio\" name=\"gender\" value=\"female\"> Female<br>\n");
      out.write("\n");
      out.write("                  <label for=\"lname\">NIC Number</label><br>\n");
      out.write("                  <input type=\"text\" id=\"lname\" name=\"UserName\" class=\"form-control\" required>\n");
      out.write("\n");
      out.write("                  <label for=\"lname\">Password</label><br>\n");
      out.write("                  <input type=\"password\" id=\"lname\" name=\"Password\" class=\"form-control\" required><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("                  <input type=\"reset\" name=\"reset\" value=\"Clear\" style=\"text-align: right;\">\n");
      out.write("                  <input type=\"submit\" name=\"docsubmit\" value=\"Register\" style=\"text-align: right;\">\n");
      out.write("                </form>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--***********************Other users Registration ***************************-->\n");
      out.write("        <div class=\"Staffreg\">\n");
      out.write("\n");
      out.write("                <p id=\"reghead\" style=\"font-size: 30px;\">Other Staff Registration</p>\n");
      out.write("\n");
      out.write("                <form action=\"registration.jsp\">\n");
      out.write("\n");
      out.write("                    <label for=\"fname\">User Category</label><br>\n");
      out.write("                    <select name=\"userCatagory\" class=\"form-control\" style=\"width:80%;\">\n");
      out.write("                      <option value=\"Admin\">Admin</option>\n");
      out.write("                      <option value=\"Lab Officer\">Lab Officer</option>\n");
      out.write("                      <option value=\"Receptionist\">Receptionist</option>\n");
      out.write("                    </select>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <label for=\"fname\">Name with Initials</label><br>\n");
      out.write("                    <input type=\"text\" id=\"fname\" name=\"fname\" class=\"form-control\" required>\n");
      out.write("\n");
      out.write("                    <input type=\"hidden\" id=\"fname\" name=\"Specialisation\" value=\"Staff Member\" class=\"form-control\">\n");
      out.write("\n");
      out.write("                    <label for=\"lname\">Mobile</label><br>\n");
      out.write("                    <input type=\"text\" id=\"lname\" name=\"Mobile\" class=\"form-control\">\n");
      out.write("\n");
      out.write("                    <label for=\"lname\">Email</label><br>\n");
      out.write("                    <input type=\"Email\" id=\"lname\" name=\"Email\" class=\"form-control\" required>\n");
      out.write("\n");
      out.write("                    <label for=\"lname\">Gender</label>\n");
      out.write("                      <input type=\"radio\" name=\"gender\" value=\"male\" checked> Male\n");
      out.write("                      <input type=\"radio\" name=\"gender\" value=\"female\"> Female<br>\n");
      out.write("\n");
      out.write("                    <label for=\"lname\">NIC Number</label><br>\n");
      out.write("                    <input type=\"text\" id=\"lname\" name=\"UserName\" class=\"form-control\" required>\n");
      out.write("\n");
      out.write("                    <label for=\"lname\">Password</label><br>\n");
      out.write("                    <input type=\"password\" id=\"lname\" name=\"Password\" value=\"\" class=\"form-control\" required><br>\n");
      out.write("\n");
      out.write("                    <input type=\"reset\" name=\"reset\" value=\"Clear\" style=\"text-align: right;\">\n");
      out.write("                    <input type=\"submit\" name=\"staffsubmit\" value=\"Register\" style=\"text-align: right;\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("</div>\n");
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
      out.write("\n");
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
