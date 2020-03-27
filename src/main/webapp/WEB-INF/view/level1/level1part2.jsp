<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title"><spring:message code="levels.level1.part2"/></jsp:attribute>

    <jsp:body>

        <!-- Page Content -->
        <div class="container">

            <div class="row">

                <div class="col-lg-12">
                    <h1 class="page-header">
                        <spring:message code="levels.level1.part2"/>
                    </h1>
                </div>

                <div class="col-lg-12">
                    <h3>
                        <spring:message code="levels.level1.part2.print"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part2.print.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part2.print.about2"/>
                    </p>
                    <code>
                        <spring:message code="levels.level1.part2.print.about3"/>
                    </code>
                    <p>
                        <spring:message code="levels.level1.part2.output"/>
                    </p>
                    <code>
                        <spring:message code="levels.level1.part2.print.about4"/>
                    </code>
                    <p>
                        <spring:message code="levels.level1.part2.print.about5"/>
                    </p>
                    <code>
                        <spring:message code="levels.level1.part2.print.about6"/>
                    </code>
                    <p>
                        <spring:message code="levels.level1.part2.print.about7"/>
                    </p>
                    <code>
                        <spring:message code="levels.level1.part2.print.about8"/>
                    </code>
                    <p>
                        <spring:message code="levels.level1.part2.output"/>
                    </p>
                    <code>
                        <spring:message code="levels.level1.part2.print.about9"/>
                    </code>
                </div>

                <div class="col-lg-12">
                    <h3>
                        <spring:message code="levels.level1.part2.printNumbers"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part2.printNumbers.about1"/>
                    </p>
                    <code>
                        <spring:message code="levels.level1.part2.printNumbers.about2"/>
                    </code>
                    <p>
                        <spring:message code="levels.level1.part2.output"/>
                    </p>
                    <code>
                        <spring:message code="levels.level1.part2.printNumbers.about3"/>
                    </code>
                </div>

                <c:url value="/level1part1.html" var="level1part1"/>
                <c:url value="/level1part2.html" var="level1part2"/>
                <div class="col-lg-12">
                    <a class="btn btn-primary" href="${level1part1}" role="button">
                        <spring:message code="levels.previousTheme"/>
                    </a>
                    <a class="btn btn-primary" href="${level1part2}" role="button">
                        <spring:message code="levels.nextTheme"/>
                    </a>
                </div>

            </div>

        </div>

    </jsp:body>

</page:template>

