
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/registration.css"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <link rel="stylesheet" href="css/Footer.css">
   <link rel="stylesheet" href="css/header.css">
   <link rel="stylesheet" href="css/bootstrap.min.css">
 
    <style>
           body{
        background-color:#f2f2f2;
        background:url(./images/adminp.jpg) no-repeat center fixed; 
        background-size: cover;
        }
    </style>

   <link rel="stylesheet" href="css/bootstrap.min.css">
</head>

<body>
    
   <!---------------------------------------header-------------------------------------------------> 
    
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
      <a href="channeling.jsp">E-Channeling</a>
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
    
    
    <!----------------------------------------Admin------------------------------------------------------>
    <form action="removeusers.jsp">
        <input type="submit" name="remove" value="Remove Users" style="float: right;padding-right:20px;margin-right: 20px;margin-top: 20px;">
    </form>
    
    
    <script>
          
            var letters = ['a','b','c','d','e','f','g','h','i','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
    var numbers = [0,1,2,3,4,5,6,7,8,9];
    var randomstring = '';

        for(var i=0;i<5;i++){
            var rlet = Math.floor(Math.random()*letters.length);
            randomstring += letters[rlet];
        }
        for(var i=0;i<3;i++){
            var rnum = Math.floor(Math.random()*numbers.length);
            randomstring += numbers[rnum];
        }
     //alert(randomstring);
    // document.write(randomstring);
     

    </script>
    
    
    
<h1>User Registration</h1>
<!--*************************Doctor Registration ***************************-->
<div class="formDiv">
    
        <div class="docreg">
                <p id="reghead" style="font-size: 30px;">Doctors Registration</p>

                <form action="registration.jsp">
                  <!-- <label for="lname">User Category</label><br> -->
                  <input type="hidden" id="fname" name="userCatagory" value="Doctor" >

                  <label for="fname">Name with Initials</label><br>
                  <input type="text" id="fname" name="fname" class="form-control" required>

                  <label for="fname">Specialization</label><br>
                   <select name="Specialisation" class="form-control" style="width:80%;">
                      <option value="Physician">Physician</option>
                      <option value="Surgeon">Surgeon</option>
                      <option value="Pediatrician">Pediatrician</option>
                      <option value="Gynecologist">Gynecologist</option>
                      <option value="Psychiatrist">Psychiatrist</option>
                      <option value="Cardiologist">Cardiologist</option>
                      <option value="Endocrinologist">Endocrinologist</option>
                      <option value="Neurologist">Neurologist</option>
                    </select>

                  <label for="fname">Details</label><br>
                  <label for="comment" style="font-size: 14px;color: black;">(Please fill out this field.)</label><br>
                  <input type="text" id="fname" name="details" placeholder="MBBS" class="form-control">

                  <label for="lname">Channeling Day</label><br>

                    <select name="channelingDay" class="form-control" style="width:80%;">

                      <option>Select Channeling Day</option>          
                      <option value="Sunday">Sunday</option>
                      <option value="Monday">Monday</option>
                      <option value="Tuesday">Tuesday</option>
                      <option value="Wednesday">Wednesday</option>
                      <option value="Thursday">Thursday</option>
                      <option value="Friday">Friday</option>
                      <option value="Saturday">Saturday</option>

                    </select>



                  <label for="lname">Channeling Time</label><br>


                  <input type="text" id="time" name="from" class="time" placeholder="From" style="width:20%;" required>
                    <select name="fromampm" class="time" style="width:15%;padding:10px;">
                      <option value="AM">AM</option>
                      <option value="PM">PM</option>
                    </select>
                  <input type="text" id="time" name="to" class="time" placeholder="to" style="width:20%;" required>
                    <select name="toampm" class="time" style="width:15%;padding:10px; ">
                      <option value="AM">AM</option>
                      <option value="PM">PM</option>
                    </select>

                   <br> 

                   <label for="lname">Charges</label><br>
                  <input type="text" id="lname" name="doctorCharge" class="form-control">

                  <label for="lname">Mobile</label><br>
                  <input type="text" id="lname" name="Mobile" class="form-control">

                  <label for="lname">Email</label><br>
                  <input type="Email" id="lname" name="Email" class="form-control" required>

                  <label for="lname">Gender</label>
                    <input type="radio" name="gender" value="male" checked> Male
                    <input type="radio" name="gender" value="female"> Female<br>

                  <label for="lname">NIC Number</label><br>
                  <input type="text" id="lname" name="UserName" class="form-control" placeholder="NIC Number is used as Username" required>

                  <label for="lname">Password</label><br>
                  <input type="password" id="lname" name="Password" class="form-control" required><br>


                  <input type="reset" name="reset" value="Clear" style="text-align: right;">
                  <input type="submit" name="docsubmit" value="Register" style="text-align: right;">
                </form>
        </div>



<!--***********************Other users Registration ***************************-->
        <div class="Staffreg">

                <p id="reghead" style="font-size: 30px;">Other Staff Registration</p>

                <form action="registration.jsp">

                    <label for="fname">User Category</label><br>
                    <select name="userCatagory" class="form-control" style="width:80%;">
                      <option value="Admin">Admin</option>
                      <option value="Lab Officer">Lab Officer</option>
                      <option value="Receptionist">Receptionist</option>
                    </select>


                    <label for="fname">Name with Initials</label><br>
                    <input type="text" id="fname" name="fname" class="form-control" required>

                    <input type="hidden" id="fname" name="Specialisation" value="Staff Member" class="form-control">

                    <label for="lname">Mobile</label><br>
                    <input type="text" id="lname" name="Mobile" class="form-control">

                    <label for="lname">Email</label><br>
                    <input type="Email" id="lname" name="Email" class="form-control" required>

                    <label for="lname">Gender</label>
                      <input type="radio" name="gender" value="male" checked> Male
                      <input type="radio" name="gender" value="female"> Female<br>

                    <label for="lname">NIC Number</label><br>
                    <input type="text" id="lname" name="UserName" class="form-control" placeholder="NIC Number is used as Username" required>

                    <label for="lname">Password</label><br>
                    <input type="password" id="lname" name="Password" value="" class="form-control" required><br>

                    <input type="reset" name="reset" value="Clear" style="text-align: right;">
                    <input type="submit" name="staffsubmit" value="Register" style="text-align: right;">


                </form>


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
