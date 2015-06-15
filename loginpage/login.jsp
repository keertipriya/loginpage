<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org   /TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
    </head>
    <body>
        <form action="Login" method="post">
            <input type="text" name="Name"/><br>
            <input type="password" name=Pass><br><br><br>
            <input type="submit" value="submit"/><br>
            <%if(request.getAttribute("message")!=(""))
            out.println(request.getAttribute("message"));
            else
            out.println(""); %>
            <h1>Hi  </h1>
            <font color="green" size="25">
            <marquee>Please login</marquee></font>
            <%java.text.DateFormat df = new java.text.SimpleDateFormat("MM/dd/yyyy"); %>
            <h1>Current Date: <%= df.format(new java.util.Date()) %> </h1>
        </form>
    </body>
</html>