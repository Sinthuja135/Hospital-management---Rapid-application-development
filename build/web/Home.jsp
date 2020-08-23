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
  <link rel="stylesheet" href="css/headImage.css">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  <title>Goshen Health|Home</title>
  <style>
* {
    box-sizing: border-box;
}

[class*="col-"] {
    float: left;
    padding: 15px;
}
#disc{
    padding-left: 30px;
    padding-right: 30px;
}
#subDiv1{
    
}
#subDiv2{
   font-size: 14px; 
   background: url(header.jpg)100%  no-repeat;
   background-size: cover;
}
#subDiv3{
    
}
#homeDiv2{
    background-colour:red 
}




@media only screen and (max-width: 600px) {
    /* For mobile phones: */
    [class*="col-"] {
        width: 100%;
    }
}
</style>
  
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
      <a class="active" href="Home.jsp" class="selected">Home</a>
      <a href="contact.jsp">Contact us</a>
      <a href="about.html">About us</a>
      <a href="select1.jsp">Find Your Doctor</a>
      <a href="channeling.jsp">eChanneling</a>
      <a href="lab_report_detail.jsp">Get Lab Report</a>
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
            <div class="container-fluid">
  
  <div class="row">
    <div class="col-sm-4" style="background-color:lavender; height:300px;">
        <h4>special services<h4/>
                        <ul>
                            <li> Oncology Unit</li><br>
                            <li>Urology Unit</li><br>
                            <li>Brain and Spine Center</li><br>
                            <li>Stroke Unit</li><br>
                            <li>Free dental care</li><br>
                        </ul> 
    </div>
      
    <div class="col-sm-4" style="background-color:lavenderblush;  height:300px;">
        <h4>OPD opening hours</h4>
                    <table class="table table-striped" style="background-colour:red ">
                        <tbody>
                            <tr>
                                <td>Monday - Friday</td>
                                <td>08.00 - 21.00</td>
                            </tr>
                            <tr>
                                <td>Saturday</td>
                                <td>09.00 - 21.00</td>
                            </tr>
                            <tr>
                                <td>Sunday</td>
                                <td>9.30 - 21.00</td>
                            </tr>
                        </tbody>
                    </table>

    </div>
      
      
    <div class="col-sm-4" style="background-color:lavender;  height:300px;">
        <h4>Protect your future and loved ones</h4>
                    <p>
                        Let us do all the hard work for you have peace of mind knowing that you and your family are covered for any event. We never wish for an injury or to fall ill but we all know it can happen so it is better to be prepared.
                        Our partners find policies for you to avoid NHS waiting times, so that you can focus more on recovering and less time waiting</p>
                
    </div>
      
  </div>
</div>
            
            

            


            <div class="homeDiv3">

                <div class="col-4" id="disc">
                    <h2>We always put our pacients first</h2>
                    <p >Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                        nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem 
                        ipsum dolor sit amet, consectetuer adipiscing eli.</p>
                    <button class="btn btn-primary">View the services</button>

                </div>

                <div class="col-4">
                    <div>
                        <img src="images/home1.jpg" width="100px" height="100px">
                        <b style="font-size: 18px">The Best Doctors</b>
                        <p>Lorem ipsum dolor sit amet, consecte tuer adipiscing elit, sed diam nonummy 
                            nibh euismod tincidunt ut.</p>
                    </div>
                    <div>
                        <img src="images/home5.png" width="75px" height="75px">
                        <b style="font-size: 18px">The Best Specialities</b>
                        <p>Lorem ipsum dolor sit amet, consecte tuer adipiscing elit, sed diam nonummy 
                            nibh euismod tincidunt ut.</p>
                    </div>


                </div>

                <div class="col-4">
                    <div>
                        <img src="images/home3.png" width="100px" height="100px">
                        <b style="font-size: 18px">Laboratory</b>
                        <p>Lorem ipsum dolor sit amet, consecte tuer adipiscing elit, sed diam nonummy 
                            nibh euismod tincidunt ut.</p>
                    </div>
                    <div>
                        <img src="images/home4.png" width="75px" height="75px">
                        <b style="font-size: 18px">Emergency Room</b>
                        <p>Lorem ipsum dolor sit amet, consecte tuer adipiscing elit, sed diam nonummy 
                            nibh euismod tincidunt ut.</p>
                    </div>
                </div>

            </div>





            <footer>
		<div class="Footer col-12">
                                <div class="Footer4 col-3">
                                    <div class="linkss">
					<b><p id="Footerhead">e@Services</p></b>
                                        <a href="#" id="link2">Find Your Doctor</a><br><br>
					<a href="#" id="link2">Find Lab Report</a><br><br>
					<a href="#" id="link2">Inquiry</a><br><br>
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
