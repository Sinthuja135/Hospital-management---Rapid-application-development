<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

  
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/Footer.css">
  <link rel="stylesheet" href="css/header.css">
  
</head>
<body>

<div class="headercont">
  <!--header-->
  <div class="logod">
    <img src="images/logo.png" class="logo" height="70px">
    
        
            <%
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
            %>
        
  </div>
  <!--navigation bars-->
  <div class="header">
    <div class="header-right">
      <a class="active" href="Home.jsp">Home</a>
      <a href="contact.jsp">Contact us</a>
      <a href="about.html">About us</a>
      <a href="select1.jsp">Find Your Doctor</a>
      <a href="channeling.jsp">eChanneling</a>
       <a href="report_lab.jsp">Get Lab Report</a>
    </div>
      <%
         if(session.getAttribute("uname")!=null){
            //out.println("<a href='logout.jsp'> Logout</a>");
            out.println("<form action='logout.jsp'><button class='btn1'>Logout</button></form>");
           }else{
            out.println("<form action='login.html'><button class='btn1'>Login</button></form>");
            }
            %>
      
  </div>

</div>

            
            
             <%
                    String fname = request.getParameter("fname");
                    String lname = request.getParameter("lname");
                    String bno = request.getParameter("bno");
                    String image = request.getParameter("image");
                    String pid = request.getParameter("pid");
                   
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaldb", "root", "");
                        Statement stmt = con.createStatement();
                        String query = "INSERT INTO lab_report(patient_id,firsname,lastname,bill_no,file,path) VALUES ('"+pid+"','"+fname+"', '"+lname+"', '"+bno+"','"+image+"','"+pid+"')";
                    
                                int n = stmt.executeUpdate(query);
                        if (n!=0){
                           out.println("uploaded sucessfully");  
                        }else{
                           out.println("Error");
                        }
                        
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }
                %>

            
            
            
</body>
</html>
