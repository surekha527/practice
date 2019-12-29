<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<html>
   <head>
      <title>Using JSTL Functions</title>
   </head>

   <body>
      <c:set var = "string1" value = "This is first String."/>
      <c:set var = "string2" value = "${fn:split(string1, ' ')}" />
      <c:set var = "string3" value = "${fn:join(string2, '-')}" />
      
      <p>Final String : ${string3}</p>
      <p>Length of String3 : ${fn:length(string3)}</p>
       <c:set var = "string4" value = "${fn:replace(string1, 'first', 'second')}" />
      <p>Final String : ${string4}</p>
      
      <c:if test = "${fn:startsWith(string3, 'This')}">
         <p>String starts with This</p>
      </c:if>
      
      <c:set var = "string5" value = "${fn:substring(string3, 5, 15)}" />

      <p>Final sub string : ${string5}</p>
      
      <c:set var = "string6" value = "${fn:substringAfter(string1, 'is')}" />

      <p>Final sub string : ${string6}</p>
      
      <c:set var = "string7" value = "${fn:substringBefore(string1, 'first')}" />
      <p>Final sub string : ${string7}</p>
      
      <c:set var = "string8" value = "${fn:toLowerCase(string1)}" />

      <p>Final string : ${string8}</p>
      
      <c:set var = "string9" value = "${fn:toUpperCase(string1)}" />

      <p>Final string : ${string9}</p>
      
      <p>String (1) Length : ${fn:length(string1)}</p>

      <c:set var = "string10" value = "${fn:trim(string1)}" />
      <p>String Length : ${fn:length(string10)}</p>
      <p>Final string : ${string10}</p>
   
   </body>
</html>