<%-- 
    Document   : product
    Created on : 14-May-2024, 6:55:52 pm
    Author     : PC2
--%>



<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Shopping</h1>
        
         <%
       
       String id= request.getParameter("id");
       String pr= request.getParameter("pr");
       String im= request.getParameter("im");
       String ra= request.getParameter("ra");
       String ti= request.getParameter("ti");

       
      
       
       Connection con;
       Statement st;
       
       try
       {
       
       Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost/javaproject","root","1234");
       st=con.createStatement();
       st.executeUpdate("insert into products value('"+id+"','"+pr+"','"+im+"','"+ra+"','"+ti+"')");
       con.close();
       response.sendRedirect("success.html");
       }
       catch(Exception e)
       {
       out.println(e);
       }




       %>
        
    </body>
</html>
