<%-- 
    Document   : login
    Created on : Dec 9, 2013, 7:05:39 PM
    Author     : abalogh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <sec:authorize access="!isAuthenticated()">
            <form name="f" action="<c:url value='/j_spring_security_check'/>" method="POST">
                <table>
                    <tr>
                        <td>User:</td>
                        <td><input type='text' name='j_username' /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type='password' name='j_password' /></td>
                    </tr>
                    <tr>
                        <td><input name="submit" type="submit" value="Submit" /></td>
                        <td><input name="reset" type="reset" /></td>
                    </tr>
                </table>
            </form>
        </sec:authorize>
        <c:if test="${not empty param.login_error}">
            <font color="red">
            Please try again.
            </font>
        </c:if>
        <c:if test="${not empty param.logout}">
            <font color="green">
            Successful logout.
            </font>
        </c:if>
        <sec:authorize access="isAuthenticated()"> 
            <table>
                <tr>
                    <td>
                        <font color="red">Logged in as: <sec:authentication property="principal.username" /></font>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="<c:url value='/j_spring_security_logout'/>">Logout</a>
                    </td>
                </tr>
            </table>
        </sec:authorize>
        <br/>
        <sec:authorize access="hasRole('ROLE_ADMIN')"> 
            <a href="<c:url value='/admin.jsp'/>">admin page</a>
        </sec:authorize>
    </body>
</html>
