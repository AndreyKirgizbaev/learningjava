<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<%--<c:url value="/file.html" var="file"/>--%>


<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">
                <i class="fab fa-java"></i>
                LearningJava</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">

                <c:url value="/java.html" var="java"/>
                <li><a href="${java}">Java</a></li>

                <c:url value="/books.html" var="books"/>
                <li><a href="${books}"><spring:message code="navMenu.books"/></a></li>

                <c:url value="/levels.html" var="levels"/>
                <li class="dropdown">
                    <%--                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><spring:message code="navMenu.tutorial"/><b--%>
                    <%--                            class="caret"></b></a>--%>
                    <%--                    <ul class="dropdown-menu">--%>
                    <%--                        <li>--%>
                    <%--                            <a href="${levels}"></a>--%>
                    <%--                        </li>--%>
                    <%--                    </ul>--%>

                    <a href="${levels}"><spring:message code="navMenu.tutorial"/></a>
                </li>

                <c:url value="/search.html" var="search"/>
                <li><a href="${search}"><spring:message code="navMenu.search"/></a></li>

                <li></li>

                <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_SUPER_USER', 'ROLE_USER')" var="isUSer"/>

                <c:if test="${not isUSer}">
                    <li style="padding-top: 15px; padding-bottom: 15px; padding-left: 15px; color: #dc3545">
                        <c:if test="${empty param.error}">
                            <spring:message code="navMenu.notLogin"/>
                        </c:if>
                    </li>
                    <li><a href="<c:url value="/login.html"/>"><spring:message code="navMenu.login"/></a></li>
                </c:if>


                <c:if test="${isUSer}">
                    <li style="padding-top: 15px; padding-bottom: 15px; color: green">
                        <spring:message code="navMenu.existLogin"/>
                        <security:authentication property="principal.username"/> <spring:message
                            code="navMenu.existLoginRole"/>
                        <b><security:authentication property="principal.authorities"/></b>

                    </li>
                    <li><a style="color: red;" href="<c:url value="/j_spring_security_logout"/>"><spring:message
                            code="navMenu.logout"/></a></li>
                </c:if>
            </ul>
        </div>

    </div>
</nav>
