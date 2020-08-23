package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <link rel=\"stylesheet\" href=\"http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/Footer.css\">\n");
      out.write("        <title>Patient History</title>\n");
      out.write("    </head>\n");
      out.write("      <style>\n");
      out.write("* {\n");
      out.write("    box-sizing: border-box;\n");
      out.write("    background-color: #EAE9E9;\n");
      out.write("}\n");
      out.write("\n");
      out.write("[class*=\"col-\"] {\n");
      out.write("    float: left;\n");
      out.write("    padding: 15px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* For desktop: */\n");
      out.write(".col-1 {width: 8.33%;}\n");
      out.write(".col-2 {width: 16.66%;}\n");
      out.write(".col-3 {width: 25%;}\n");
      out.write(".col-4 {width: 33.33%;}\n");
      out.write(".col-5 {width: 41.66%;}\n");
      out.write(".col-6 {width: 50%;}\n");
      out.write(".col-7 {width: 58.33%;}\n");
      out.write(".col-8 {width: 66.66%;}\n");
      out.write(".col-9 {width: 75%;}\n");
      out.write(".col-10 {width: 83.33%;}\n");
      out.write(".col-11 {width: 91.66%;}\n");
      out.write(".col-12 {width: 100%;}\n");
      out.write("\n");
      out.write("@media only screen and (max-width: 600px) {\n");
      out.write("    /* For mobile phones: */\n");
      out.write("    [class*=\"col-\"] {\n");
      out.write("        width: 100%;\n");
      out.write("    }\n");
      out.write("}</style>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"homeDiv2\">\n");
      out.write("\n");
      out.write("                <div class=\"col-3\" id=\"subdiv1\">\n");
      out.write("                   \n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-6\" id=\"subdiv2\">\n");
      out.write("                    ");

           //DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
           //LocalDateTime now = LocalDateTime.now();  
           
                                if(session.getAttribute("Pid")!=null){

                                    String prescrip=request.getParameter("medicine");
                                    String discription=request.getParameter("other");
                                try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaldb","root","");
                                Statement stmt = con.createStatement();
                                String query="update patient set prescription= '"+prescrip+"' where patientID='"+session.getAttribute("Pid")+"'";
                                String query4="update patient set dateTime= '"+java.time.LocalDate.now()+"' where patientID='"+session.getAttribute("Pid")+"'";
                                String query2="update patient set other= '"+discription+"' where patientID='"+session.getAttribute("Pid")+"'";
                                
                                        int num = stmt.executeUpdate(query);
                                        int num2 = stmt.executeUpdate(query2);
                                        int num3 = stmt.executeUpdate(query4);
                                        
                                        if(num!=0||num2!=0)
                                                {

                                        String query3="select * from patient where patientID='"+session.getAttribute("Pid")+"'";
                                        out.println("*************************************************************");
                                        out.print("<br>");
                                        ResultSet rs = stmt.executeQuery(query3);
                                        while(rs.next()){
                                            
                                            String date=rs.getString("dateTime");
                                            String name=rs.getString("patientName");
                                            out.println("Date "+java.time.LocalDate.now());
                                            out.print("<br>");
                                            out.print("<br>");
                                            out.println("<b>Patient Name    :</b>"+name);
                                            out.print("<br>");
                                            out.print("<br>");
                                            out.println("<b>Prescriptions    :</b>");
                                             out.print("<br>");
                                             String array1[]= prescrip.split(",");
                                             for (String temp: array1){
                                                  out.println(temp);
                                                  out.print("<br>");
                 }
                                            session.invalidate();
                                         }
                                                 
                                                }
                                        else
                                        {
                                            out.print("There is a problem in updating Record.");
                                        }
                                        
                                }catch(Exception e){
                                   out.println(e.getMessage());
                                } 
                                }else{
                                     out.print("<h4>Enter correct patient ID</h4>");
                                }
                                out.println("*************************************************************");
                                out.print("<br>");
                    
      out.write("\n");
      out.write("                    <a href=\"#\"><img src=\"images/doctor1.jpg\" width=\"150px\" height=\"100px\"></a>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-3\" id=\"subdiv3\">\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("       \n");
      out.write("\n");
      out.write("\n");
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
