<%-- 
    Document   : servicepanel
    Created on : Apr 29, 2024, 7:05:10 PM
    Author     : Sunny 1
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="mystyle.css">
        <title>login Page </title>
    </head>
    <body>
       <%
       
       String n= request.getParameter("n");
       String p= request.getParameter("p");
       String sq= request.getParameter("sq");
       String sa= request.getParameter("sa");
       String c= request.getParameter("c");
       
      
       
       Connection con;
       Statement st;
       
       try
       {
       
       Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost/javaproject","root","1234");
       st=con.createStatement();
       st.executeUpdate("insert into users value('"+n+"','"+p+"','"+sq+"','"+sa+"','"+c+"')");
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
