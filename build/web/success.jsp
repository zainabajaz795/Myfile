<%-- 
    Document   : success.jsp
    Created on : 20-May-2024, 6:34:17 pm
    Author     : PC2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://unpkg.com/@dotlottie/player-component@latest/dist/dotlottie-player.mjs" type="module"></script> 
         <style>
            body
            {
                width:100%;
                height: 100vh;
                background: linear-gradient(yellow,violet);
                display: flex;
                justify-content: center;
                align-items: center;
            }
              a
            {
                color:black;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                text-decoration:none;
            }
        </style>
        
    </head>
    <body>
        <%
            String  user = request.getParameter("n");
            
            session.setAttribute("user",user);
        %>
        <div>            
            <iframe src="https://lottie.host/embed/11cbf122-0ef4-4a7a-a118-d32e95786ef2/IAY5fISys3.json"></iframe>
            <br>
            <a href="profile.jsp">
               Go to Profile 
             </a>
        </div>
    </body>
</html>
