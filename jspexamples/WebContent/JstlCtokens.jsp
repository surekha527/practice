<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
   <head>
      <title><JstlCtokens> Tag Example</title>
   </head>

   <body>
      <c:forTokens items = "Surekha Deepthi Ramya" delims = " " var = "name">
         <c:out value = "${name}"/><p>
      </c:forTokens>
   </body>
</html>