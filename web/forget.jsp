<%-- 
    Document   : checkin
    Created on : May 2, 2024, 6:59:31 PM
    Author     : Sunny 2
--%>
<%@page import="jdk.internal.org.objectweb.asm.commons.Method"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
          body
          {
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
          }
          .box
          {
            width: 40%;
            height: 40%;
            background-color: aquamarine;
          }

        </style>
    </head>
    <body>
        
       
        <%

        String sq="",sa="",sp="",ans=null;
                
        String n=request.getParameter("n");
      
        
      
         Connection con;
         Statement st;
         ResultSet rs;
         
        
       try
       {
       
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/javaproject","root","1234");
        st=con.createStatement();
        rs = st.executeQuery("select * from users where username = '"+n+"'");
        while(rs.next())
        {
          sq=rs.getString("question");
          sa=rs.getString("answer");
          sp=rs.getString("password");
          
        }
        
        
      con.close();
        
       }
        catch(Exception e)
       {
       out.println(e);
       }
      %>
      
      <div class="box" method="post">
          <form action="check.jsp?sq=<% out.print(sq); %>">
          <p align="center"><% out.print(sq); %></p>
          <p align="center"><input type="text" name="ans"></p>
          <p align="center"><input type="submit" value="Send Answer"></p>
        </form>
      </div>
        
        
    </body>
</html>
