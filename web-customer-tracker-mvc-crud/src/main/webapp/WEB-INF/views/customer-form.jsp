<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/11/2020
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Add</title>
    <link type="text/css" rel="stylesheet" href="/resources/css/style.css">
    <link type="text/css" rel="stylesheet" href="/resources/css/add-customer-style.css">
</head>
<body>
    <div id="warpper">
        <div id="header">
            <h2>CRUD - Customer Relationship Manager</h2>
        </div>
    </div>
    <div id="container">
        <h3>Save Customer</h3>
        <form:form action="saveCustomer" modelAttribute="customer" method="post">

            <form:hidden path="id"></form:hidden>

            <table>
                <tbody>
                <tr>
                    <td><label>First Name</label></td>
                    <td><form:input path="firstName"/></td>
                </tr>
                <tr>
                    <td><label>Last Name</label></td>
                    <td><form:input path="lastName"/></td>
                </tr>
                <tr>
                    <td><label>Email</label></td>
                    <td><form:input path="email"/></td>
                </tr>
                <tr>
                    <td><label></label></td>
                    <td><input type="submit" value="Save" class="save"/></td>
                </tr>
                </tbody>
            </table>
        </form:form>

        <div style="clear: both;"></div>
        <p>
            <a href="${pageContext.request.contextPath}/customer/list">Back To List</a>
        </p>
    </div>

</body>
</html>
