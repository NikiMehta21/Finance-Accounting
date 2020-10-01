<%-- 
    Document   : SendMail
    Created on : 15 Dec, 2018, 12:13:51 PM
    Author     : priya
--%>

<%@page import="MailSendPack.Mailer" %>
<%
if(request.getParameter("btnSend") != null)
{
    String Email = request.getParameter("txtEmail");
    String Subject = request.getParameter("txtSubject");
    String Message= request.getParameter("txtMessage");
    if(Mailer.send("cksolutioninfo@gmail.com", "12345678@$$", Email, Subject, Message))
    {
        out.print("Succesfuuly Send Message.");
    }
    else
    {
         out.print("Something Wrong.");
    }
    
    
    
}

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST">
            <label>Email</label>
           
            <input type="text" id="txtEmail" name="txtEmail" />
             <br>
             <br>
              <label>Subject</label>
           
            <input type="text" id="txtSubject" name="txtSubject" />
             <br>
             <br>
              <label>Message</label>
           
              <textarea id="txtMessage" name="txtMessage"></textarea>
             <br>
             <br>
             <input type="submit" value="Send Mail" name="btnSend" />
        </form>
    </body>
</html>
