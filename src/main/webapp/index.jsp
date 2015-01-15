<%@page contentType="text/html"%>
<jsp:useBean id="jbeans" class="com.sevenbits.jbeans.JBeans" scope="application">
<jsp:setProperty name="jbeans" property="*"/>
</jsp:useBean>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>

<html>
<head><title>Employee</title></head>
<body>
<h2>Employees</h2>
    <table>
        <% List<Map<String, String>> employee = jbeans.getEmployee();
            for(Map item: employee) { %>
                <tr><td><%=item.get("firstName") %></td>
                <td><%=item.get("surName") %></td></tr>
         <% }%>
    </table>
</body>