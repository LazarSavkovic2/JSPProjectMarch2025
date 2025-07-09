<%-- 
    Document   : demontrerUtilisateurs
    Created on : Mar 30, 2025, 2:20:19 PM
    Author     : lazar
--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Utilisateurs</title>
    </head>
    <body>
        <p>Utilisateurs</p>
    </body>
</html>
<%@ page import="java.net.*, java.io.*" %>
<%
    String urlString = "http://localhost:8080/auth/resources/api"; // URL of the web service
    URL url = new URL(urlString);
    HttpURLConnection connection = (HttpURLConnection) url.openConnection();
    
    // Set up the connection
    connection.setDoOutput(true);
    connection.setRequestMethod("PUT");
    connection.setRequestProperty("Content-Type", "application/json");

    // Get the response
    int responseCode = connection.getResponseCode();
    StringBuilder bob = new StringBuilder();
    if (responseCode == HttpURLConnection.HTTP_OK) {
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()))) {
            String line;
            while ((line = reader.readLine()) != null) {
                bob.append(line);
            }
        }
    }
    out.println(bob.toString());
%>
