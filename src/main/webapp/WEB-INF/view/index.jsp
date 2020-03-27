<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title">LearningJava.ru</jsp:attribute>

    <jsp:body>

        <!-- Page Content -->
        <div class="container">

            <div class="row">

                <div class="col-lg-12">
                    <h1 class="page-header">
                        <spring:message code="content.introMsg"/>
                    </h1>
                </div>

                <div class="col-lg-12" style="padding-bottom: 15px;">
                    <p>
                        - <u><spring:message code="content.free"/></u>
                        <spring:message code="content.about1"/>
                    </p>
                    <p>
                        <spring:message code="content.about2"/>
                    </p>
                    <p>
                        <spring:message code="content.about3"/>
                    </p>
                    <p>
                        <spring:message code="content.about4"/>
                    </p>
                    <p>
                        <spring:message code="content.about5"/>
                    </p>
                </div>

                <c:url value="/java.html" var="java"/>
                <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>
                                <span style="font-size: 20px; color: #f8ac00;">
                                    <i class="fab fa-java"></i>
                                </span>
                                Java
                            </h4>
                        </div>
                        <div class="panel-body">
                            <p><spring:message code="content.java"/></p>
                            <a href="${java}" class="btn btn-default"><spring:message code="content.more"/></a>
                        </div>
                    </div>
                </div>

                <c:url value="/books.html" var="books"/>
                <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>
                                <span style="font-size: 20px;  color: #ba7f49;">
                                    <i class="fas fa-book"></i>
                                </span>
                                <spring:message code="content.books"/>
                            </h4>
                        </div>
                        <div class="panel-body">
                            <p><spring:message code="content.books.about"/></p>
                            <a href="${books}" class="btn btn-default"><spring:message code="content.more"/></a>
                        </div>
                    </div>
                </div>

                <c:url value="/levels.html" var="levels"/>
                <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>
                                <span style="font-size: 20px; color: #f89917;">
                                    <i class="fas fa-space-shuttle"></i>
                                </span>
                                <spring:message code="content.levels"/>
                            </h4>
                        </div>
                        <div class="panel-body">
                            <p><spring:message code="content.levels.about"/></p>
                            <a href="${levels}" class="btn btn-default"><spring:message code="content.more"/></a>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </jsp:body>

</page:template>
