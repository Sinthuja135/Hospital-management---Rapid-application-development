

<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/Footer.css">
        <title>Patient History</title>
    </head>
      <style>
* {
    box-sizing: border-box;
    background-color: #EAE9E9;
}

[class*="col-"] {
    float: left;
    padding: 15px;
}

/* For desktop: */
.col-1 {width: 8.33%;}
.col-2 {width: 16.66%;}
.col-3 {width: 25%;}
.col-4 {width: 33.33%;}
.col-5 {width: 41.66%;}
.col-6 {width: 50%;}
.col-7 {width: 58.33%;}
.col-8 {width: 66.66%;}
.col-9 {width: 75%;}
.col-10 {width: 83.33%;}
.col-11 {width: 91.66%;}
.col-12 {width: 100%;}

@media only screen and (max-width: 600px) {
    /* For mobile phones: */
    [class*="col-"] {
        width: 100%;
    }
}</style>
    <body>
        <div class="homeDiv2">

                <div class="col-3" id="subdiv1">
                   


                </div>

                <div class="col-6" id="subdiv2">
                    <%
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
                    %>
                    <a href="#"><img src="images/doctor1.jpg" width="150px" height="100px"></a>
                </div>

                <div class="col-3" id="subdiv3">
                    
                </div>

            </div>
        
       
       


    </body>
</html>
