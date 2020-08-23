
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

   <link rel="stylesheet" href="css/contact.css">
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
    
        
           
        
  </div>
  <!--navigation bars-->
  <div class="header">
    <div class="header-right">
      <a class="active" href="Home.jsp">Home</a>
      <a href="contact.jsp">Contact us</a>
      <a href="about.html">About us</a>
      <a href="select1.jsp">Find Your Doctor</a>
      <a href="channeling.jsp">eChanneling</a>
    </div>
     
      
  </div>

</div>

<!-------------------------------------contact us content------------------------------------------------------>

	<h2>Contact US</h2>
            
  <div class="conbody">          
        
	
		<div class="conbodyup">
		
			<div class="colum">
				<p>Address<br><br>Goshen Health Hospital,<br>Kadawatha Road,<br>Ragama.</p>
			</div>
			
			<div class="colum">
				<p>Hotline<br><br>+9462 3627 967<br>+9425 6252 662<br>+9455 6282 852</p>
			</div>
			
			<div class="colum">
				<p>E-mail<br><br>goshenhelthhospital@mail.com</p>
			</div>
		

		</div>
		
            <!------------------------------------------------------------>
         
		 <div class="conbodydown">
		 
			<div class="conbodydownform">
			
				<h4>Customer Feed Backs...</h4><br>
			
				<form action="contact.jsp" method="POST" name="feedback">
					<input type="hidden" name="to" value="jrhpushpakumara2017@gmail.com">
					<input type="hidden" name="subject" value="Customer feedbacks">

					<label for="name">Your Name</label>
					<input type="text" id="name" name="name" class="form-control" placeholder="This Field is Required" required><br>

					<label for="Email">Your Email Address</label>
					<input type="email" id="email" name="email" class="form-control" placeholder="This Field is Required" required><br>

					<label for="mobile">Mobile Number</label>
					<input type="text" id="mobile" name="mobile" class="form-control" placeholder="+94 "><br>

					<label for="Message">Message</label>
					<textarea id="message" name="message" placeholder="Your feedback..." style="height:100px" class="form-control" required></textarea><br>


					<input type="submit" name="send" value="Send">
					
				</form>
			</div>

		</div>   
            
            
            
  </div>          
         <%!
        public static class SMTPAuthenticator extends Authenticator{
        
            public PasswordAuthentication getPasswordAuthentication (){
            return new PasswordAuthentication("Nemo Dory", "computerlab");
}


}
        
        %>
        <%
        int result=0;
        if(request.getParameter("send") != null){
            
            String d_uname="nemodorylab2018@gmail.com";
            String d_password="computerlab";
            String d_host="smtp.gmail.com";
            int d_port=465;
            
            String m_to=new String();
            String m_from="nemodorylab2018@gmail.com";
            String m_subject= new String();
            String m_text= new String();
            
            //my new added
            
            String cmsg=request.getParameter("message");
            String cname=request.getParameter("name");
            String cemail=request.getParameter("email");
            String cmobile=request.getParameter("mobile");
            String message="Customer Name : "+cname+"<br>"+"Email Address : "+cemail+"<br>"+"Mobile Number : "+cmobile+"<br>"+"Feedback : "+"\n"+cmsg;
            //out.print(message);
            if(request.getParameter("to") !=null){
            m_to=request.getParameter("to");
            }
            
            if(request.getParameter("subject") !=null){
            m_subject=request.getParameter("subject");
            }
             
             if(cmsg!=null){
                 //m_text="<h1>Welcome to the web app and design</h1><br/>";
                 m_text=m_text.concat(message);
                // m_text=m_text.concat("<br/><h2>Hope u Enjoy the course</h2>");
                 
                 
            }
             //create a properties object
             Properties props= new Properties();
             
             //create an SMTPAuthenticator object
             SMTPAuthenticator auth= new SMTPAuthenticator();
             
             //create a mail session object
             Session ses = Session.getInstance(props, auth);
             
             //Create a MIME style email message object
             MimeMessage msg= new MimeMessage(ses);
             msg.setContent(m_text,"text/html");
             msg.setSubject(m_subject);
             msg.setFrom(new InternetAddress( m_from));
             msg.addRecipient(Message.RecipientType.TO, new InternetAddress( m_to));
             
             try{
                 Transport transport=ses.getTransport("smtps");
                 transport.connect(d_host, d_port, d_uname,d_password);
                 
                 transport.sendMessage(msg,msg.getAllRecipients());
                 
                 transport.close();
                 result=1;
                 out.println("<script>window.alert('Message Was Sent Successfully!!!');</script> ");
                  out.print("Your Feedback was Sent. Thank You!!!");
             }catch(Exception e){
             
                 out.println("<script>window.alert('Message Couldnt send!!!');</script> ");
                 //out.println(e);
                 out.print("Coudnt send");
             }
        }
        %>   
            
<!---------------------------------------------------footer------------------------------------------------------->           

<footer>
		<div class="Footer col-12">
                                <div class="Footer4 col-3">
                                    <div class="linkss">
					<b><p id="Footerhead">eServices</p></b>
                                        
                                        
                                        <a class="active" href="Home.jsp" id="link2">Home</a><br><br>
                                        <a href="contact.jsp" id="link2">Contact us</a><br><br>
                                        <a href="select1.jsp" id="link2">Find Your Doctor</a><br><br>
                                        <a href="channeling.jsp" id="link2">eChanneling</a><br><br>
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
