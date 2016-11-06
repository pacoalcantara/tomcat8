<%@page contentType="text/html" import="java.util.*" %>
<html>
   <head>
      <meta http-equiv="refresh" content="1">
   </head>
   <%@ page import="java.util.Date" %>
   <body>
      <H1>Test App</H1>
      <%= date = new java.util.Date() %>
      <p>Greetings, this is the first version of our test app. The time is currently: <%= date %></p>
   </body>
</html>
