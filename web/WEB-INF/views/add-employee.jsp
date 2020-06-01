<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 31/5/2020
  Time: 9:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<body>
<h2>Employee</h2>
<form:form method="post" action="alexwoo" modelAttribute="employee">
    <table>
        <tr>
            <td><form:label path="id">ID</form:label></td>
            <td><form:input path="id"/></td>
        </tr>
        <tr>
            <td><form:label path="name">Name</form:label></td>
            <td><form:input path="name"/></td>
        </tr>
        <tr>
            <td><form:label path="Address">Address</form:label></td>
            <td><form:input path="address"/></td>
        </tr>
        <tr>
            <td><form:label path="email">Email</form:label></td>
            <td><form:input path="email"/></td>
        </tr>
        <tr>
            <td><form:label path="gender">Gender</form:label></td>
            <td><form:radiobutton path="gender" value="male" label="male"/></td>
            <td><form:radiobutton path="gender" value="female" label="female"/></td>
        </tr>
        <tr>
            <td><form:label path="favorites">Favorite</form:label></td>
            <td><form:checkboxes items="${listFavorite}" path="favorites"/></td>
        </tr>
        <tr>
            <td><form:label path="position">Position</form:label></td>
            <td>
                <form:select path="position">
                    <form:option value="NONE" label="Select"/>
                    <form:options items="${listPosition}"/>
                </form:select>
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Submit"/></td>
        </tr>
    </table>

</form:form>
</body>
</html>
