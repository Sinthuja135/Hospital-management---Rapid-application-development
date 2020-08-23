

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
       

    </head>
    <body>

   
        
        <%
        try{
        String username = request.getParameter("input1");
        String pwd = request.getParameter("input2");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaldb", "root", "");
        Statement st = con.createStatement();
        //ResultSet rs;
        String query="select * from login where username='"+username+"' and password='"+pwd+"'";
        ResultSet rs = st.executeQuery(query);
        
        if(rs.next()){
            session.setAttribute("uname",rs.getString("username"));
            
            if(rs.getString("usercategory").equals("Admin")){
                response.sendRedirect("registration.html");
                //out.println("abcd");
                
            }
            else if(rs.getString("usercategory").equals("Doctor")){
                response.sendRedirect("doctor.jsp");
            }
             else if(rs.getString("usercategory").equals("Receptionist")){
                response.sendRedirect("receptionist.jsp");
            }
            else if(rs.getString("usercategory").equals("Lab Officer")){
                response.sendRedirect("lab_report_detail.jsp");
            }
            
        }
        else{
            //response.sendRedirect("login.html");
            out.println("<p>Enter correct username and password</p>");
        }
        
        
    }catch(Exception e){
        out.println(e.getMessage());
    }
%>

    </body>
</html>
