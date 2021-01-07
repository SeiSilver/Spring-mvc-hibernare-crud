<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/09/2020
  Time: 10:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>List</title>
    <link type="text/css" rel="stylesheet" href="/resources/css/style.css">
    <%--        <link type="text/css" rel="stylesheet" href="/resources/css/add-customer-style.css">--%>
</head>
<body>
    <div id="warpper">
        <div id="header">
            <h2>CRUD - Customer Relationship Manager</h2>
        </div>
    </div>

    <div id="container">
        <div id="content">

            <input type="button" value="Add Customer" onclick="window.location.href='showFormForAdd';return false;"
                   class="add-button"
            />
            <form:form action="search" method="POST">
                Search customer: <input type="text" name="theSearchName"/>

                <input type="submit" value="Search" class="add-button"/>
            </form:form>
            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
                <c:forEach var="item" items="${customers}">
                    <c:url var="updateLink" value="/customer/showFormForUpdate">
                        <c:param name="customerId" value="${item.id}"/>
                    </c:url>

                    <c:url var="deleteLink" value="/customer/delete">
                        <c:param name="customerId" value="${item.id}"/>
                    </c:url>

                    <tr>
                        <td>${item.firstName}</td>
                        <td>${item.lastName}</td>
                        <td>${item.email}</td>
                        <td><a href="${updateLink}">Update</a>
                            |<a href="${deleteLink}"
                                onclick="if(!(confirm('Are you Sure Want to Delete this customer?')))return false;">Delete</a>
                        </td>

                    </tr>
                </c:forEach>
            </table>

        </div>
    </div>

</body>
</html>
