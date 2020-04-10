<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>



<nav class="header">
    <div class="header__c">
        <a href="index">
            <div class="header__c__logo">
                <i class="fab fa-java"></i>
                <span>LearningJava</span>
            </div>
        </a>

        <div class="header__c__options" id="navbarNav">
            <c:url value="/java" var="java"/>
            <div class="header__c__options__option">
                <a class="nav-link" href="${java}">Java</a>
            </div>
            <c:url value="/books" var="books"/>
            <div class="header__c__options__option">
                <a class="nav-link" href="${books}"><spring:message code="navMenu.books"/></a>
            </div>
            <c:url value="/levels" var="levels"/>
            <div class="header__c__options__option">
                <a class="nav-link" href="${levels}"><spring:message code="navMenu.tutorial"/></a>
            </div>
            <c:url value="/search" var="search"/>
            <div class="header__c__options__option">
                <a class="nav-link" href="${search}"><spring:message code="navMenu.search"/></a>
            </div>

            <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_SUPER_USER', 'ROLE_USER')" var="isUSer"/>

            <c:if test="${not isUSer}">
                <div class="header__c__options__option">
                    <c:if test="${empty param.error}">
                        <a class="link link-red"><spring:message code="navMenu.notLogin"/></a>
                    </c:if>
                </div>
                <div class="header__c__options__option">
                    <a class="nav-link" href="<c:url value="/login"/>"><spring:message
                            code="navMenu.login"/></a>
                </div>
            </c:if>

            <c:if test="${isUSer}">
                <div class="header__c__options__option">
                    <a class="nav-link" style="color: green"><spring:message code="navMenu.existLogin"/></a>
                    <a class="nav-link"><security:authentication property="principal.username"/></a>
<%--                    <spring:message code="navMenu.existLoginRole"/>--%>
<%--                    <b><security:authentication property="principal.authorities"/></b>--%>

                </div>
                <div class="header__c__options__option">
                    <a class="nav-link" style="color: red;" href="<c:url value="/j_spring_security_logout"/>">
                        <spring:message
                                code="navMenu.logout"/>
                    </a>
                </div>
            </c:if>

        </div>

        <div class="toggle-side-bar">
            <i style="color:#ccc;" class="fas fa-bars"></i>
        </div>
    </div>
</nav>