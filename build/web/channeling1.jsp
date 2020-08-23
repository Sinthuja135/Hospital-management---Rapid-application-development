
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>add channelling</title>
    </head>
    <body>
        <div class="Container" >
            <div class= "col-md-7"> 

                <%
                    
                     String doctorName = request.getParameter("doctorName");
                    String patientsname = request.getParameter("patientsname");
                    String email = request.getParameter("email");
                     String telephone = request.getParameter("telephone");
                      DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
                        String channelingDate = fmt.format(new Date());
                    String gender = request.getParameter("gender");
                    String nic = request.getParameter("nic");
                   String age = request.getParameter("age");
                    
                   
                    
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaldb", "root", "");
                        Statement stmt = con.createStatement();
                        String query = "INSERT INTO channeling(patientName,patientEmail,mobileNo,channelingDate,gender,nic,age) VALUES ( '"+patientsname+"', '"+email+"','"+telephone+"','"+channelingDate+"','"+gender+"', '"+nic+"','"+age+"' )";
                        int n = stmt.executeUpdate(query);
                        if (n!=0){
                            out.println("<h4>Channeling success</h4>");
                        }else{
                            out.println("<h4>Error while registering the user.</h4>");
                        }
                        
                        } catch (Exception e) {
                            out.println(e.getMessage());
                        }
                    %>
                                 
                </div>                                                
            </div>
    </body>
</html>
