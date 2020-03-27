<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title">Books</jsp:attribute>

    <jsp:body>

        <!-- Page Content -->
        <div class="container">

            <div class="row">

                <div class="col-lg-12">
                    <h1 class="page-header">
                        <spring:message code="books.introMsg"/>
                    </h1>
                </div>

                <div class="col-lg-12">

                    <h2>
                        <spring:message code="books.newbie"/>
                    </h2>

                    <h4>
                        <span style="font-size: 20px;  color: #ba7f49;">
                            <i class="fas fa-book"></i>
                        </span>
                        <spring:message code="books.newbie.book1"/>
                    </h4>

                    <p>
                        <spring:message code="books.newbie.about1"/>
                    </p>

                    <h4>
                        <span style="font-size: 20px;  color: #ba7f49;">
                            <i class="fas fa-book"></i>
                        </span>
                        <spring:message code="books.newbie.book2"/>
                    </h4>

                    <p>
                        <spring:message code="books.newbie.about2"/>
                    </p>

                    <h4>
                        <span style="font-size: 20px;  color: #ba7f49;">
                            <i class="fas fa-book"></i>
                        </span>
                        <spring:message code="books.newbie.book3"/>
                    </h4>

                    <p>
                        <spring:message code="books.newbie.about3"/>
                    </p>

                    <h2>
                    <spring:message code="books.mid"/>
                </h2>

                    <h4>
                        <span style="font-size: 20px;  color: #ba7f49;">
                            <i class="fas fa-book"></i>
                        </span>
                        <spring:message code="books.mid.book1"/>
                    </h4>

                    <p>
                        <spring:message code="books.mid.about1"/>
                    </p>

                    <h4>
                        <span style="font-size: 20px;  color: #ba7f49;">
                            <i class="fas fa-book"></i>
                        </span>
                        <spring:message code="books.mid.book2"/>
                    </h4>

                    <p>
                        <spring:message code="books.mid.about2"/>
                    </p>

                    <h2>
                        <spring:message code="books.high"/>
                    </h2>

                    <h4>
                        <span style="font-size: 20px;  color: #ba7f49;">
                            <i class="fas fa-book"></i>
                        </span>
                        <spring:message code="books.high.book1"/>
                    </h4>

                    <p>
                        <spring:message code="books.high.about1"/>
                    </p>

                    <h4>
                        <span style="font-size: 20px;  color: #ba7f49;">
                            <i class="fas fa-book"></i>
                        </span>
                        <spring:message code="books.high.book2"/>
                    </h4>

                    <p>
                        <spring:message code="books.high.about2"/>
                    </p>

                </div>

            </div>

        </div>

    </jsp:body>

</page:template>
