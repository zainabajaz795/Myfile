<%-- Document : profile Created on : 20-May-2024, 6:31:46 pm Author : PC2 --%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>
            .product
            {
                width: 150px;
                height: 300px;
                background-color: olive;
                display: flex;
                flex-direction: column;
                border-radius: 10px;
                box-shadow: rgb(95, 75, 75);
            }
            .imagebox
            {
                height: 70%;
                width: 100%;
                background-color: salmon;
            }
            
            body
            {
                margin: 0;
            }
            .header
            {
                width: 100%;
                height: 100px;
                background-color: black;
                color: white;
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 0 30px 0 30px;
                box-sizing: border-box;
            }
            a
            {
                text-decoration: none;
                color: yellow;
            }
            .page
            {
                width: 100%;
                height: 100vh;                
                display: grid;
                grid-template-columns: auto auto auto auto auto;
                grid-template-rows: auto auto auto auto;
                row-gap: 25px;
            }
            img
            {
                width: 100%;
                height: 100%;

            }

        </style>
    </head>

    <body>
        <% String user = (String) session.getAttribute("user"); %>
        <div class="header">
            <h1>
                Hello <% out.println(user); %>
            </h1>
            <a href="index.html">
                Log Out
            </a>
        </div>

        <div class="page">

            <%

            Connection con;
            Statement st;
            ResultSet rs;
            
           
          try
          {
          
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost/javaproject","root","1234");
           st=con.createStatement();
           rs = st.executeQuery("select * from products");
           while(rs.next())
           {
            %>
                   <div class="product">
                       <div class="imagebox">
                           <img src="<% out.print(rs.getString("image")); %>" alt="">
                       </div>
                       <p>
                           <% out.print(rs.getString("title")); %>
                       </p>
                       <p>
                        Rs. <% out.print(rs.getString("price")); %>
                       </p>
                   </div>
                   
           
            <%
           }
           
           
         con.close();
           
          }
           catch(Exception e)
          {
          out.println(e);
          }
   
           %>
   
        </div>


        
    </body>

</html>