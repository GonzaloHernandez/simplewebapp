<%-- 
    Document   : output
    Created on : Feb 4, 2016, 8:25:53 PM
    Author     : chalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thanks</title>
    </head>
    <body>
        <h1>Thank you for your time</h1>
        <p>
            <%= request.getParameter("fullName") %>
        </p>    
        <ul>
            <%
                String[] selectedLanguages = 
                        request.getParameterValues("progLang");
                if ( selectedLanguages != null) {
                    for (int i=0; i<selectedLanguages.length; i++) {
            %>
            <li>
            <%=  selectedLanguages[i]%>
            </li>
            <%
                    }
                }
            %>
        </ul>
    </body>
</html>
