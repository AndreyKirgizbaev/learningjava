<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title">Levels</jsp:attribute>

    <jsp:body>

        <div class="container">

            <div class="row">

                <div class="pb-2 mt-4 mb-2 border-bottom">
                    <h1 class="page-header">
                        <spring:message code="levels.introMsg"/>
                    </h1>
                </div>

                <c:url value="/level1part1.html" var="level1part1"/>
                <div class="col-lg-12" style="padding-bottom: 15px;">
                    <a href="${level1part1}">
                        <h3>
                            <spring:message code="levels.level1.part1"/>
                        </h3>
                    </a>
                </div>

                <c:url value="/level1part2.html" var="level1part2"/>
                <div class="col-lg-12" style="padding-bottom: 15px;">
                    <a href="${level1part2}">
                        <h3>
                            <spring:message code="levels.level1.part2"/>
                        </h3>
                    </a>
                </div>

                <c:url value="/level1part3.html" var="level1part3"/>
                <div class="col-lg-12" style="padding-bottom: 15px;">
                    <a href="${level1part3}">
                        <h3>
                            <spring:message code="levels.level1.part3"/>
                        </h3>
                    </a>
                </div>

            </div>

        </div>

    </jsp:body>

</page:template>