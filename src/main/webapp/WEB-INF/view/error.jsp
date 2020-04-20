<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title">LearningJava.ru</jsp:attribute>

    <jsp:body>

        <div class="page__c__title">
            <h1>
                <spring:message code="error.ups"/>
            </h1>
        </div>

        <div class="col-lg-12" style="padding-bottom: 15px;">
            <p>
                <spring:message code="error.noRole"/>
            </p>
            <c:url value="/levels" var="levels"/>
            <div class="row">
                <a class="btn btn-blue btn-levels" href="${levels}" role="button">
                    <spring:message code="levels.introMsg"/>
                </a>
            </div>


            <p>
                <spring:message code="error.error"/>
            </p>
        </div>


    </jsp:body>

</page:template>

