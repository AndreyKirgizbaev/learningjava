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

                    <textarea class="java-code"><spring:message code="levels.level1.part2.print.about3"/></textarea>

                    <p>
                        <spring:message code="levels.level1.part2.output"/>
                    </p>

                    <textarea class="java-code"><spring:message code="levels.level1.part2.print.about4"/></textarea>
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

                <div class="col-lg-12">
                    <form action="/level1part2/compile" method="POST">
                        <h3>Введите код</h3>
                        <textarea id="java-editor" name='code'><c:out value="${code}"/></textarea>
                        <input type="submit" class="btn btn-dark" value="Скомпилировать">
                    </form>
                    <br/>
                    <p class="alert alert-success"><c:out value="${result}"/></p>
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

        <script>

            $('.java-code').each(function (index, elem) {
                CodeMirror.fromTextArea(elem, {
                    readOnly: "nocursor",
                    viewportMargin: 2,
                    theme: "darcula",
                    lineNumbers: true,
                    matchBrackets: true,
                    mode: "text/x-java"
                }).setSize("100%", "100%");
            });

            var javaEditor = CodeMirror.fromTextArea(document.getElementById("java-editor"), {
                viewportMargin: 2,
                theme: "darcula",
                lineNumbers: true,
                matchBrackets: true,
                mode: "text/x-java"
            }).setSize("100%", "100%");
        </script>


    </jsp:body>

</page:template>

