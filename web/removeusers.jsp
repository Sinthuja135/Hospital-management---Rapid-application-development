

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>removeusers</title>
<link rel="stylesheet" href="css/removeusers.css"> 
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <style>
       body{
    background-color:#f2f2f2;
    background:url(./images/adminpage_2.jpg) no-repeat center fixed; 
    background-size: cover;
}
   </style>
   <link rel="stylesheet" href="css/bootstrap.min.css"> 
    <body>
      
    <form action="admin.jsp">
        <input type="submit" name="back" value="Back" style="float: right;padding-right:20px;margin-right: 20px;">
    </form>
        
        <h1 style="text-align:center;color:white;">Remove Users</h1>
        
            <div class="removeform" style="text-align:center;">
            
        <form action="removeusers.jsp" method="POST">
            
            
            <lable class="remt">User Name</lable><br>
            <input type='text' name='uname' class="form-control">
            
            <lable class="remt">User Category</lable><br>
            <select name="usercategory" class="form-control">
              <option value="Admin">Admin</option>
              <option value="Lab Officer">Lab Officer</option>
              <option value="Receptionist">Receptionist</option>
              <option value="Doctor">Doctor</option>
            </select><br>
            <input type="submit" value="Remove" name="docremove" class="btn-primary">
            
        </form>
    </div>
        
        
        

       
        <%
            
            String uname=request.getParameter("uname");
            String usercategory=request.getParameter("usercategory");
            if(request.getParameter("docremove") != null){ 
            //**********************doctor remove***************************
            
            if(request.getParameter("usercategory").equals("Doctor")){
                
                try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaldb", "root", "");
                        Statement stmt = con.createStatement();
                        String query ="DELETE FROM doctor WHERE username='"+uname+"'";
                        int n = stmt.executeUpdate(query);
                        if (n!=0){
                           // out.println("<h4>Doctor Removing Successfull...</h4>");
                            
                        }else{
                           // out.println("<h4>Something went wrong!!! Doctor</h4>");
                        }
                        
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }
            
            }
            
          
            //**********************Lab Officer remove***************************
            
            if(request.getParameter("usercategory").equals("Lab Officer")){
                
                try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaldb", "root", "");
                        Statement stmt = con.createStatement();
                        String query ="DELETE FROM staffmembers WHERE username='"+uname+"'";
                        int n = stmt.executeUpdate(query);
                        if (n!=0){
                            //out.println("<h4>Lab Officer Removing Successfull...</h4>");
                            
                        }else{
                            //out.println("<h4>Something went wrong!!!Lab Officer</h4>");
                        }
                        
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }
            
            }
            
           //********************************Admin remove********************* 
                        
            if(request.getParameter("usercategory").equals("Admin")){
                
                try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaldb", "root", "");
                        Statement stmt = con.createStatement();
                        String query ="DELETE FROM staffmembers WHERE username='"+uname+"'";
                        int n = stmt.executeUpdate(query);
                        if (n!=0){
                            //out.println("<h4>Admin Removing Successfull...</h4>");
                            
                        }else{
                            //out.println("<h4>Something went wrong!!! Admin</h4>");
                        }
                        
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }
            
            }
                    //********************************Receptionist remove********************* 
                        
            if(request.getParameter("usercategory").equals("Receptionist")){
                
                try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaldb", "root", "");
                        Statement stmt = con.createStatement();
                        String query ="DELETE FROM staffmembers WHERE username='"+uname+"'";
                        int n = stmt.executeUpdate(query);
                        if (n!=0){
                           // out.println("<h4>Receptionist Removing Successfull...</h4>");
                            
                        }else{
                           // out.println("<h4>Something went wrong!!! Receptionist</h4>");
                        }
                        
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }
            
            }
            
        }
            
            
            //**************************login remove**************************
                if(request.getParameter("docremove") != null){  
                              
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaldb", "root", "");
                        Statement stmt = con.createStatement();
                        String query ="DELETE FROM login WHERE username='"+uname+"' AND usercategory='"+usercategory+"'";
                        int n = stmt.executeUpdate(query);
                        if (n!=0){
                            out.println("<p class='ur' style='color:blue;text-align:center;font-size:20px;'>User has Removed Successfully..</p>");
                            
                        }else{
                            out.println("<p class='ur' style='color:red;text-align:center;font-size:20px;'>You have Entered Invalid Username and Password..</p>");
                        }
                        
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }
                }
                
            %>
        
       
    </body>
</html>
