<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<%--<c:url value="/file.html" var="file"/>--%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="index.html"><i class="fab fa-java"></i>LearningJava</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <c:url value="/java.html" var="java"/>
                <li class="nav-item">
                    <a class="nav-link" href="${java}">Java</a>
                </li>
                <c:url value="/books.html" var="books"/>
                <li class="nav-item">
                    <a class="nav-link" href="${books}"><spring:message code="navMenu.books"/></a>
                </li>
                <c:url value="/levels.html" var="levels"/>
                <li class="nav-item">
                    <a class="nav-link" href="${levels}"><spring:message code="navMenu.tutorial"/></a>
                </li>
                <c:url value="/search.html" var="search"/>
                <li class="nav-item">
                    <a class="nav-link" href="${search}"><spring:message code="navMenu.search"/></a>
                </li>

                <li class="nav-item"></li>

                <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_SUPER_USER', 'ROLE_USER')" var="isUSer"/>

                <c:if test="${not isUSer}">
                    <li class="nav-item">
                        <c:if test="${empty param.error}">
                            <a class="nav-link" style="color: #dc3545"><spring:message code="navMenu.notLogin"/></a>
                        </c:if>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/login.html"/>"><spring:message
                                code="navMenu.login"/></a>
                    </li>
                </c:if>

                <c:if test="${isUSer}">
                    <li class="nav-item">
                        <a class="nav-link" style="color: green"><spring:message code="navMenu.existLogin"/></a>
                        <security:authentication property="principal.username"/> <spring:message
                            code="navMenu.existLoginRole"/>
                        <b><security:authentication property="principal.authorities"/></b>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link" style="color: red;" href="<c:url value="/j_spring_security_logout"/>">
                            <spring:message
                                    code="navMenu.logout"/>
                        </a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>