<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Page</title>
    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrap"/>
    <spring:url value="/resources/css/signin.css" var="signin"/>
    <link href="${bootstrap}" rel="stylesheet"/>
    <link href="${signin}" rel="stylesheet"/>
</head>
<body>
<form name="form" action="j_spring_security_check" method="post" class="form-signin">
    <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_SUPER_USER', 'ROLE_USER')" var="isUSer"/>

    <span style="font-size: x-small; color: green; ">
        <c:if test="${isUSer}">Вы вошли как:
            <security:authentication property="principal.username"/> с ролью:
            <b><security:authentication property="principal.authorities"/></b>
        </c:if>
    </span>
    <br/>
    <c:if test="${not empty param.error}">
        <span style="font-size: x-small; color: red; "><b>Неправильный логин или пароль</b></span>
    </c:if>

    <h2 class="form-signin-heading"><spring:message code="login.main"/></h2>

    <label for="inputEmail" class="sr-only"><spring:message code="registration.username"/></label>
    <input id="inputEmail" class="form-control" name="j_username" required autofocus/>

    <label for="inputPassword" class="sr-only"><spring:message code="registration.password"/></label>
    <input type="password" id="inputPassword" class="form-control" name="j_password" required/>

    <div class="checkbox">
        <label>
            <input type="checkbox" id="rememberme" name="_spring_security_remember_me"/><spring:message code="login.remember"/>
        </label>
    </div>
    <input type="submit" value="<spring:message code="login.enter"/>" class="btn btn-lg btn-primary btn-block">
    <br/>
    <a href="javascript:history.back()"><spring:message code="login.back"/></a>
    <a href="/registration"><spring:message code="registration"/></a>
</form>
</body>

</html>
