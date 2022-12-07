<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Worker Page</title>
    </head>
    <body>

        <form method="GET" action="PositionServlet"
            <label for="fname">User name:</label>
            <input type="text" id="fname" name="uname" value="Nume..."><br>
            
            <label for="posid">Position ID:</label>
            <input type="text" id="posid" name="posid" value="0">
            <br><br>
            <input type="submit" value="AddPosition">
        </form>


    </body>
</html>
