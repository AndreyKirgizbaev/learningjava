<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title"><spring:message code="levels.level1.part1"/></jsp:attribute>

    <jsp:body>

        <!-- Page Content -->
        <div class="container">

            <div class="row">

                <div class="col-lg-12">
                    <h1 class="page-header">
                        <spring:message code="levels.level1.part1"/>
                    </h1>
                </div>

                <div class="col-lg-12">
                    <h3>
                        <spring:message code="levels.level1.part1.literals"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part1.literals.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part1.literals.about2"/>
                    </p>
                </div>

                <div class="col-lg-12">
                    <h3>
                        <spring:message code="levels.level1.part1.integer"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part1.integer.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part1.integer.about2"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part1.integer.about3"/>
                    </p>
                </div>

                <div class="col-lg-12">
                    <h3>
                        <spring:message code="levels.level1.part1.сharacters"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part1.сharacters.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part1.сharacters.about2"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part1.сharacters.about3"/>
                    </p>
                </div>

                <div class="col-lg-12">
                    <h3>
                        <spring:message code="levels.level1.part1.strings"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part1.strings.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part1.strings.about2"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part1.strings.about3"/>
                    </p>
                </div>

                <div class="col-lg-12">
                    <h3>
                        <spring:message code="levels.level1.part1.strings"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part1.strings.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part1.strings.about2"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part1.strings.about3"/>
                    </p>
                </div>

                <div class="col-lg-12">
                    <h3>
                        <spring:message code="levels.level1.part1.remember"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part1.remember.about1"/>
                    </p>
                    <ul>
                        <li>
                            <spring:message code="levels.level1.part1.remember.about2"/>
                        </li>
                        <li>
                            <spring:message code="levels.level1.part1.remember.about3"/>
                        </li>
                        <li>
                            <spring:message code="levels.level1.part1.remember.about4"/>
                        </li>
                    </ul>
                </div>

                <c:url value="/level1part2.html" var="level1part2"/>
                <div class="col-lg-12">
                    <a class="btn btn-primary" href="${level1part2}" role="button">
                        <spring:message code="levels.nextTheme"/>
                    </a>
                </div>

            </div>

        </div>

    </jsp:body>

</page:template>
