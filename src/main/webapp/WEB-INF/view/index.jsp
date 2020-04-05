<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title">LearningJava.ru</jsp:attribute>

    <jsp:body>

        <div class="container">

            <div class="row">

                <div class="col-lg-12">
                    <h1 class="pb-2 mt-4 mb-2 border-bottom">
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
                <div class="col-sm-4 col-xs-12">
                    <div class="card h-100">
                        <div class="card-header">
                            <h4 class="card-title">
                                <span style="font-size: 20px; color: #f8ac00;">
                                    <i class="fab fa-java"></i>
                                </span>
                                Java
                            </h4>
                        </div>
                        <div class="card-body">
                            <p class="card-text"><spring:message code="content.java"/></p>
                        </div>
                        <div class="card-footer">
                            <a href="${java}" class="btn btn-default"><spring:message code="content.more"/></a>
                        </div>
                    </div>
                </div>

                <c:url value="/books.html" var="books"/>
                <div class="col-sm-4 col-xs-12">
                    <div class="card h-100">
                        <div class="card-header">
                            <h4>
                                <span style="font-size: 20px;  color: #ba7f49;">
                                    <i class="fas fa-book"></i>
                                </span>
                                <spring:message code="content.books"/>
                            </h4>
                        </div>
                        <div class="card-body">
                            <p><spring:message code="content.books.about"/></p>
                        </div>
                        <div class="card-footer">
                            <a href="${books}" class="btn btn-default"><spring:message code="content.more"/></a>
                        </div>
                    </div>
                </div>

                <c:url value="/levels.html" var="levels"/>
                <div class="col-sm-4 col-xs-12">
                    <div class="card h-100">
                        <div class="card-header">
                            <h4>
                                <span style="font-size: 20px; color: #f89917;">
                                    <i class="fas fa-space-shuttle"></i>
                                </span>
                                <spring:message code="content.levels"/>
                            </h4>
                        </div>
                        <div class="card-body">
                            <p><spring:message code="content.levels.about"/></p>
                        </div>
                        <div class="card-footer">
                            <a href="${levels}" class="btn btn-default"><spring:message code="content.more"/></a>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </jsp:body>

</page:template>
