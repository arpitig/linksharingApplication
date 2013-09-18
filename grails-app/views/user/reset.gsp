<%--
  Created by IntelliJ IDEA.
  User: arpit-singhal
  Date: 11/9/13
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="linksharing"/>
  <title></title>
</head>
<body>
    <div>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:form name="resetpass" controller="user" action="resetpass">

            <table>
                <tr>
                    <td>Enter Current Password:</td>
                    <td><g:passwordField name="currpass"/></td>
                </tr>
                <tr>
                    <td>Enter New Password:</td>
                    <td><g:passwordField name="newpass"/></td>
                </tr>
                <tr>
                    <td>Enter Password Again:</td>
                    <td><g:passwordField name="renewpass"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><g:submitButton name="change" value="Change" /></td>
                </tr>

            </table>
        </g:form>
    </div>


</body>
</html>