<%-- 
    Document   : TempConvert
    Created on : Dec 2, 2021, 10:37:07 AM
    Author     : mooham12314
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Convert</title>
    </head>
    <body>
         <%
            String message;
            if (request.getParameter("convertF") != null) {
            String Celcius = request.getParameter("temp");
            Double convertToF = (Double.parseDouble(Celcius)*(9/5))+32;
            message = convertToF +" °F ";
                out.print(message);
            }
            
            if (request.getParameter("convertC") != null) {
            String Fahrenheit = request.getParameter("temp");
            Double Celcius = (Double.parseDouble(Fahrenheit)-32)*(0.5);
            message = Celcius +" °C ";
                out.print(message);
            }
            
        %>
    </body>
</html>
