<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title">Java</jsp:attribute>

    <jsp:body>

    <div class="page__c__title">
        <h1>
            <spring:message code="java.introMsg"/>
        </h1>
    </div>

    <p>
        <spring:message code="java.about1"/>
    </p>
    <p>
        <spring:message code="java.about2"/>
    </p>
    <p>
        <spring:message code="java.about3"/>
    </p>
    <p class="p-b-15">
        <spring:message code="java.about4"/>
    </p>


    <h2 class="page-header">
        <spring:message code="java.introMsg2"/>
    </h2>

    <p>
        <spring:message code="java.about5"/>
    </p>
    <p>
        <spring:message code="java.about6"/>
    </p>
    <p class="p-b-15">
        <spring:message code="java.about7"/>
    </p>

    </jsp:body>

</page:template>