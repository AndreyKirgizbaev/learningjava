<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title">Levels</jsp:attribute>

    <jsp:body>

    <div class="page__c__title">
        <h1>
            <spring:message code="levels.introMsg"/>
        </h1>
    </div>

    <c:url value="/level1part1" var="level1part1"/>
    <div class="level-link" style="padding-bottom: 15px;">
        <a href="${level1part1}">
            <span>
                1/10
            </span>
            <h3>
                <spring:message code="levels.level1.part1"/>
            </h3>
        </a>
    </div>

    <c:url value="/level1part2" var="level1part2"/>
    <div class="level-link" style="padding-bottom: 15px;">
        <a href="${level1part2}">
            <span>
                2/10
            </span>
            <h3>
                <spring:message code="levels.level1.part2"/>
            </h3>
        </a>
    </div>

    <c:url value="/level1part3" var="level1part3"/>
    <div class="level-link" style="padding-bottom: 15px;">
        <a href="${level1part3}">
            <span>
                3/10
            </span>
            <h3>
                <spring:message code="levels.level1.part3"/>
            </h3>
        </a>
    </div>

    <c:url value="/level1part4" var="level1part4"/>
    <div class="level-link" style="padding-bottom: 15px;">
        <a href="${level1part4}">
            <span>
                4/10
            </span>
            <h3>
                <spring:message code="levels.level1.part4"/>
            </h3>
        </a>
    </div>

    <c:url value="/level1part5" var="level1part5"/>
    <div class="level-link" style="padding-bottom: 15px;">
        <a href="${level1part5}">
            <span>
                5/10
            </span>
            <h3>
                <spring:message code="levels.level1.part5"/>
            </h3>
        </a>
    </div>

    <c:url value="/level1part6" var="level1part6"/>
    <div class="level-link" style="padding-bottom: 15px;">
        <a href="${level1part6}">
            <span>
                6/10
            </span>
            <h3>
                <spring:message code="levels.level1.part6"/>
            </h3>
        </a>
    </div>

    <c:url value="/level1part7" var="level1part7"/>
    <div class="level-link" style="padding-bottom: 15px;">
        <a href="${level1part7}">
            <span>
                7/10
            </span>
            <h3>
                <spring:message code="levels.level1.part7"/>
            </h3>
        </a>
    </div>

    <c:url value="/level1part8" var="level1part8"/>
    <div class="level-link" style="padding-bottom: 15px;">
        <a href="${level1part8}">
            <span>
                8/10
            </span>
            <h3>
                <spring:message code="levels.level1.part8"/>
            </h3>
        </a>
    </div>

    <c:url value="/level1part9" var="level1part9"/>
    <div class="level-link" style="padding-bottom: 15px;">
        <a href="${level1part9}">
            <span>
                9/10
            </span>
            <h3>
                <spring:message code="levels.level1.part9.return"/>
            </h3>
        </a>
    </div>

    <c:url value="/level1part10" var="level1part10"/>
    <div class="level-link" style="padding-bottom: 15px;">
        <a href="${level1part10}">
            <span>
                10/10
            </span>
            <h3>
                <spring:message code="levels.level1.part10"/>
            </h3>
        </a>
    </div>

    </jsp:body>

</page:template>