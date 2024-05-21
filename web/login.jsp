<%-- 
    Document   : login
    Created on : May 1, 2024, 7:05:08 PM
    Author     : Sunny 2
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
        <h1>LOGIN </h1>
        <%
         String n= request.getParameter("n");
         String p= request.getParameter("p");
         
         
         
          Connection con;
          Statement st;
          ResultSet rs;
          
       
       try
       {
       
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/javaproject","root","1234");
        st=con.createStatement();
        rs = st.executeQuery("select * from users where username = '"+n+"' and password = '"+p+"'");
        

        while(rs.next())
        {
           response.sendRedirect("success.jsp?n="+n);
        }
        response.sendRedirect("fail.html");
        
        con.close();
        
       }
        catch(Exception e)
       {
       out.println(e);
       }

        
        
        %>
    </body>
</html>
