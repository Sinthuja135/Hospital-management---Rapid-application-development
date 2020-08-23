

<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
    <head>
       <meta name="viewport" content="width=device-width, initial-scale=1">

  
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/Footer.css">
  <link rel="stylesheet" href="css/header.css">
  
        <title> Goshen Health </title>
        
        
        
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

  
  
    <div  style="padding-left: 300px;padding-right: 300px;background-color: #e6f2ff"> 
        <h2 style="padding-left: 200px">Patient Details</h2>
            <form action="channeling.jsp"   method = "POST" style= "background-color: #e6f2ff">         
               
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
                              String doctorName = request.getParameter("doctorName");


                        } catch (Exception e) {
                            out.println("<p>Error : "+e.getMessage()+"</p>");
                        }%>
                        </select>     
                    </form>
                     <form action="channeling1.jsp"   method = "POST" style="background-color: #e6f2ff">
                        <div class="form-group">
                            <label  >Patient Name </label>
                                <input type="text" style="border: 2px #007bff  solid; border-radius: 2px   "  name="patientsname" maxlength="100"  class="form-control"/>
                         </div>
                  
                                 
                            <div class="form-group">
                                    <label> Email</label>												
                                    <input type="email" style="border: 2px #007bff  solid; border-radius: 2px" name="email" maxlength="100"  class="form-control" placeholder="example@example.com"/>												
                            </div>


                            <div class="form-group">
                                    <label >Telephone Number </label>											   
                                    <input type="text" style="border: 2px #007bff  solid; border-radius: 2px" name="telephone" maxlength="10" class="form-control" placeholder="077xxxxxxx"/>											   
                            </div>

                            <div class="form-group">
                                    <label > Nic</label>											   
                                    <input type="text" style="border: 2px #007bff  solid; border-radius: 2px" name="nic" maxlength="10" class="form-control" />											   
                            </div>

                             <div class="form-group">
                                 
                                <label >Gender </label>
                                <input type="radio" name="gender" value="Male" checked="checked" />Male
                                <input type="radio" name="gender" value="Female" />Female
                            </div>
                            <div class="form-group">
                                    <label > Age</label>											   
                                    <input type="text" style="border: 2px #007bff  solid; border-radius: 2px" name="age" maxlength="10" class="form-control" />											   
                            </div>

                                 
                                        <td style="text-align: right"><input type="submit" style="border-radius:4px; padding: 10px 15px; background-color:#007bff; color: white" value="channel" name="btnRegister" />
                                   
                                     
                                       <input type="reset" style="border-radius:4px; padding: 10px 15px; background-color:#007bff; color: white" value="Clear" name="btnClear" />
                                    
                                
                  
                                           
                         </form>
              
                   </div>  
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

