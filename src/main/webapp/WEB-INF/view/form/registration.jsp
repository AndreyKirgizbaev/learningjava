<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Page</title>
    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrap" />
    <spring:url value="/resources/css/signin.css" var="signin" />
    <link href="${bootstrap}" rel="stylesheet" />
    <link href="${signin}" rel="stylesheet" />
</head>
<body>
<form name="form" action="/registration" method="post" class="form-signin">

    <span style="font-size: x-small; color: green; ">
        <c:if test="${isUSer}">Вы вошли как:
            <security:authentication property="principal.username"/>
        </c:if>
    </span>
    <br/>

    <h2 class="form-signin-heading"><spring:message code="registration"/></h2>

    <label for="inputEmail"><spring:message code="registration.email"/></label>
    <input type="email" id="inputEmail" class="form-control" name="email" required autofocus/>

    <label for="inputEmail"><spring:message code="registration.username"/></label>
    <input id="inputUsername" class="form-control" name="username" required autofocus/>

    <label for="inputPassword"><spring:message code="registration.password"/></label>
    <input type="password" id="inputPassword" class="form-control" name="password" required/>
    <label for="inputPassword"><spring:message code="registration.repeatPassword"/></label>
    <input type="password" id="inputPassword2" class="form-control" name="password2" required/>

    <input type="submit" value="<spring:message code="registration.enter"/>" class="btn btn-lg btn-primary btn-block" >
    <br/>
    <a href="javascript:history.back()">Назад</a>

</form>
</body>

</html>
