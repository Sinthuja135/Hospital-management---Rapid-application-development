

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View patient history</title>
    <style>
* {
    box-sizing: border-box;
    background-color: #EAE9E9;
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
}
</style>
  
    </head>
    
    <body>
               <div class="homeDiv2">

                <div class="col-3" id="subdiv1">
                   


                </div>

                <div class="col-6" id="subdiv2">
                        <%
          String nic=request.getParameter("pnicNo");
          //out.println(nic);
          int num=0;
            try {
            
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaldb","root","");
            
            Statement stmt = con.createStatement();
            
             String query="select * from patient where pNIC='"+nic+"'";
             ResultSet rs = stmt.executeQuery(query);
             
             while(rs.next()){
                String pPrescription=rs.getString("prescription");
                String otherData=rs.getString("other");
                String date=rs.getString("dateTime");
                String name=rs.getString("patientName");
                out.println("<b>Date    :</b>"+date);
                out.print("<br>");
                out.println("<b>Patient Name    :</b>"+name);
                out.print("<br>");
                out.print("<br>");
                out.print("<b>Prescriptions:</b>");
                out.print("<br>");
                String array1[]= pPrescription.split(",");
                 for (String temp: array1){
                      out.println(temp);
                      out.print("<br>");
                 }
                 
                 out.print("<br>");
                 out.print("<b>Special Records</b>");
                 out.print("<br>");
                 out.print(otherData);
                 out.print("<br>");
                 out.print("<br>");
                 out.print("**************************************");
                 out.print("<br>");
                num++;
             }
            
                    
            
                if( num==0){
                 out.println("<h1>No any recorded history</h1>");    
                }
            
            }catch(Exception e){

                out.println(e.getMessage());
            }
      %>
                   
      <a href="#"><img src="images/doctor1.jpg" width="150px" height="100px"></a>
                </div>

                <div class="col-3" id="subdiv3">
                    
                </div>

            </div>
        
        
    
    </body>
</html>
