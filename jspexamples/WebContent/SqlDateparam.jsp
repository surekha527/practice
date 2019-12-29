<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.util.Date,java.text.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>JSTL sql:dataParam Tag</title>
   </head>

   <body>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/jdbc"
         user = "root"  password = "root"/>

      <%
         Date DoB = new Date("2001/12/16");
         int id = 2;
      %>
 
      <sql:update dataSource = "${snapshot}" var = "count">
         UPDATE user SET dob = ? WHERE id = ?
         <sql:dateParam value = "<%=DoB%>" type = "DATE" />
         <sql:param value = "<%=id%>" />
      </sql:update>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from user;
      </sql:query>
 
      <table border = "1" width="50%">
         <tr>
            <th>Emp ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>DoB</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td> <c:out value = "${row.id}"/></td>
               <td> <c:out value = "${row.firstname}"/></td>
               <td> <c:out value = "${row.lastname}"/></td>
               <td> <c:out value = "${row.dob}"/></td>
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>