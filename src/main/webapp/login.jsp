<%-- 
    Document   : login
    Created on : Dec 9, 2013, 7:05:39 PM
    Author     : abalogh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>

        <form name='f'
              action="<c:url value='/j_spring_security_check' />"
              method='POST'>

            <table>
                <tr>
                    <td>User:</td>
                    <td><input type='text' name='j_username' />
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type='password' name='j_password' />
                    </td>
                </tr>
                <tr>
                    <td><input name="submit" type="submit" value="Submit" />
                    </td>
                    <td><input name="reset" type="reset" />
                    </td>
                </tr>
            </table>

        </form>
    </body>
</html>
