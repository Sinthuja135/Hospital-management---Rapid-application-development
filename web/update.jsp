

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         String name=request.getParameter("name");
         String phone=request.getParameter("phone");
         String age=request.getParameter("age");
         String gender = request.getParameter("gender");
      String nic=request.getParameter("nic");
      
     
     
     
      try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaldb", "root", "");
          Statement stmt = con.createStatement();
          String query = "INSERT INTO patient (patientName,pPhoneNo,age,gender,pNIC) VALUES ('"+name+"','"+phone+"','"+age+"','"+gender+"','"+nic+"')";
          int n = stmt.executeUpdate(query);
          if (n!=0){
              out.println("<script type='text/javascript'>alert('Registration Successfull');</script>");
          }
          else{
             out.println("<script type='text/javascript'>alert('Error while registering the user');</script>");
          }
      }catch(Exception e){
          out.println(e.getMessage());
      }
      %>  
    </body>
</html>
