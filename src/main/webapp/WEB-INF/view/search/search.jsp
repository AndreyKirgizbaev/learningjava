<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title">Search</jsp:attribute>

    <jsp:body>

        <div class="container">

            <div class="row">

                <div class="col-lg-12">
                    <h1 class="pb-2 mt-4 mb-2 border-bottom">
                        <spring:message code="search.introMsg"/>
                    </h1>
                </div>

                <div class="col-lg-12" style="padding-bottom: 15px;">
                    <h3>
                        <spring:message code="search.A"/>
                    </h3>
                </div>

            </div>

        </div>

    </jsp:body>

</page:template>
