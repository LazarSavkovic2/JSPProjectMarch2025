<%-- 
    Document   : login
    Created on : Mar 30, 2025, 5:19:40 PM
    Author     : lazar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html>
    <body>
        <form method="GET" action="http://localhost:8080/auth/resources/api">
            Nom <input type="text" name="name" required><br>
            Mot de passe: <input type="text" name="pass" required><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>