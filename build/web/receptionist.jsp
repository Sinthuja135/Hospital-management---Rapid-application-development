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
                String q="select* from staffmembers where username='"+session.getAttribute("uname")+"'";
                ResultSet rs = stmt.executeQuery(q);

              if(rs.next()){
                String name=rs.getString("name");
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
 <div class="container" style="background-color: #e6f2ff">
        
 <form action="receptionist.jsp" method="POST" >
        <h2>Channelling Details</h2>
        <div class="form-group">
      <label class="control-label col-sm-3" >Doctor:</label>
      <div class="col-sm-6">
        <select class="form-control docsp_sel"  name="doctor" >
             <%
         
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaldb", "root", "");
                Statement stmt = con.createStatement();
                String query = "SELECT * FROM doctor";                
                ResultSet rs = stmt.executeQuery(query);
               
                while (rs.next()) {
                    out.println(" <option value='"+rs.getString("doctorName")+"'/>"+rs.getString("doctorName")+"</option>");          
             
                }  
                
                
     
            } catch (Exception e) {
                out.println("<p>Error : "+e.getMessage()+"</p>");
            }%>
            </select>
        </div>
        </div>
    
        <input type="submit" class="btn btn-default"  name="special" value="Search DoctorID" >
        
      
             <div class="form-group">
      <label class="control-label col-sm-3" >Doctor ID:</label>
        <div class="col-sm-6">
      <%
            if(request.getParameter("special")!=null){
                String doctor=request.getParameter("doctor");
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaldb", "root", "");
                Statement stmt = con.createStatement();
                String query="select doctorID from doctor where doctorName='"+doctor+"'";
                ResultSet rs = stmt.executeQuery(query);
                while(rs.next()){
                    String doctorID=rs.getString("doctorID");
                    session.setAttribute("doctorID",rs.getString("doctorID"));
                    
                    out.println("<input type=text class=form-control value='"+rs.getString("doctorID")+"'/>");
                    out.println("<br>");
                }
                }
                catch (Exception e) {
                out.println("<p>Error : "+e.getMessage()+"</p>");
            }
            }
            %>
      
        </div>
             </div>
    </form>
            <form action="patient.jsp" method="POST">
                <div class="form-group">
                <label class="control-label col-sm-3" >Channelling No:</label>
                 <div class="col-sm-6">
                <input type="text" class="form-control"  placeholder="Enter your channelingno" name="cno" >
                 </div>
    </div>
                <button type="submit" class="btn btn-default" >Search</button>
                <a href="nic.jsp" style="padding-left: 320px">Forgotten Channelling No</a>
            </form>
    </div>

            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            

            <footer>
		<div class="Footer col-12">
                                <div class="Footer4 col-3">
                                    <div class="linkss">
					<b><p id="Footerhead">eServices</p></b>
                                        
                                        
                                        <a class="active" href="Home.jsp" id="link2">Home</a><br><br>
                                        <a href="contact.jsp" id="link2">Contact us</a><br><br>
                                        <a href="select1.jsp" id="link2">Find Your Doctor</a><br><br>
                                        <a href="channeling.jsp" id="link2">eChanneling</a><br><br>
                                        <a href="report_lab.jsp">Get Lab Report</a>
                                    </div>
				</div>
				
				<div class="Footer3 col-3">
						<b><p id="Footerhead">Conect with Us</p></b>
						
						<a href="#" id="link1" target="_blank"><img src="images/fb.png" alt="Facebook" width="20%" height="20%" ></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="#" id="link1" target="_blank"><img src="images/twitter.png" alt="Twitter" width="20%" height="20%"></a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="#" id="link1" target="_blank"><img src="images/google.png" alt="Google" width="20%" height="20%"></a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
				</div>
				<div class="Footer2 colu-3">
						<b><p id="Footerhead">Find Us</p></b>
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.2283057070813!2d81.07561229554683!3d6.982363167274395!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae4618a1a9fec37%3A0x1dd900702229654b!2sUva+Wellassa+University!5e0!3m2!1sen!2slk!4v1511197231475"  width="90%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
					
				</div>
				
				
                                <div class="Footer1 col-3">
					<b><p id="Footerhead">Contact Us</p></b>
					
						Goshen Health Hospital<br>
						Kadawatha Road,<br>
						Ragama.<br><br>
                                                Phone : +94 11 2255 255<br>
						Emergency : +94 11 2200 200<br>
						Email :goshenhealth@gmail.com<br>
					
					
				</div>
			</div>
		</footer>
    
    
</body>
</html>