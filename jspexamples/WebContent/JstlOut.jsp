<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
   <head>
      <title> <JstlOut>Out Tag Example</title>
   </head>

   <body>
      <c:out value = "${'name'}" default="Guest"/>
   </body>
</html>