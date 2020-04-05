<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title">Java</jsp:attribute>

    <jsp:body>

        <div class="container">

            <div class="row">

                <div class="col-lg-12">
                    <h1 class="pb-2 mt-4 mb-2 border-bottom">
                        <spring:message code="java.introMsg"/>
                    </h1>
                </div>

                <div class="col-lg-12">
                    <p>
                        <spring:message code="java.about1"/>
                    </p>
                    <p>
                        <spring:message code="java.about2"/>
                    </p>
                    <p>
                        <spring:message code="java.about3"/>
                    </p>
                    <p>
                        <spring:message code="java.about4"/>
                    </p>
                </div>

                <div class="col-lg-12">
                    <h2 class="page-header">
                        <spring:message code="java.introMsg2"/>
                    </h2>
                </div>

                <div class="col-lg-12" style="padding-bottom: 15px;">
                    <p>
                        <spring:message code="java.about5"/>
                    </p>
                    <p>
                        <spring:message code="java.about6"/>
                    </p>
                    <p>
                        <spring:message code="java.about7"/>
                    </p>
                </div>

            </div>

        </div>

    </jsp:body>

</page:template>