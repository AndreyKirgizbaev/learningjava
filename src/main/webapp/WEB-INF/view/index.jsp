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

        <div class="row">
            <div class="col col-1">
                <div class="card">
                    <div class="card__header">
                        <h4 class="card__header__title">
                            <span style="color: #f8ac00;">
                                <i class="fab fa-java"></i>
                            </span>
                            Java
                        </h4>
                    </div>
                    <div class="card__text">
                        <spring:message code="content.java"/>
                    </div>
                    <div class="card__btns">
                        <div class="btn btn-blue" onClick="location.href='/java.html'">
                            <spring:message code="content.more"/>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col col-spacer" ></div>

            <div class="col col-1">
                <div class="card">
                    <div class="card__header">
                        <h4 class="card__header__title">
                            <span style="color: #ba7f49;">
                                <i class="fas fa-book"></i>
                            </span>
                            <spring:message code="content.books"/>
                        </h4>
                    </div>
                    <div class="card__text">
                        <spring:message code="content.books.about"/>
                    </div>
                    <div class="card__btns">
                        <div class="btn btn-blue" onClick="location.href='/books.html'">
                            <spring:message code="content.more"/>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col col-spacer" ></div>

            <c:url value="/levels.html" var="levels"/>
            <div class="col col-1">
                <div class="card">
                    <div class="card__header">
                        <h4 class="card__header__title">
                            <span style="color: #f89917;">
                                <i class="fas fa-space-shuttle"></i>
                            </span>
                            <spring:message code="content.levels"/>
                        </h4>
                    </div>
                    <div class="card__text">
                        <spring:message code="content.levels.about"/>
                    </div>
                    <div class="card__btns">
                        <div class="btn btn-blue" onClick="location.href='/levels.html'">
                            <spring:message code="content.more"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </jsp:body>

</page:template>
