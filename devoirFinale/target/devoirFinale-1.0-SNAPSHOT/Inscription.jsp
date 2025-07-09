<%-- 
    Document   : Inscription
    Created on : Mar 27, 2025, 11:54:30 AM
    Author     : lazar
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <form method="POST" action="http://localhost:8080/auth/resources/api">
            Nom <input type="text" name="name" required><br>
            Mot de passe: <input type="text" name="pass" required><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>

