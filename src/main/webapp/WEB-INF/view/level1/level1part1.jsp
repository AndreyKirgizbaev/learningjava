<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title"><spring:message code="levels.level1.part1"/></jsp:attribute>

    <jsp:body>

        <div class="container">

            <div class="row">

                <div class="col-lg-12">
                    <h1 class="pb-2 mt-4 mb-2 border-bottom">
                        <spring:message code="levels.level1.part1"/>
                    </h1>
                </div>

                <div class="col-1 scroll">
                    <div id="list-example" class="list-group">
                        <a class="list-group-item list-group-item-action" href="#literals">
                            <spring:message code="levels.level1.part1.literals"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#integer">
                            <spring:message code="levels.level1.part1.integer"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#сharacters">
                            <spring:message code="levels.level1.part1.сharacters"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#strings">
                            <spring:message code="levels.level1.part1.strings"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#remember">
                            <spring:message code="levels.level1.part1.remember"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#task">
                            <spring:message code="levels.task"/>
                        </a>
                    </div>
                </div>

                <div class="col-2"></div>

                <div class="col-10">
                    <h3 id="literals">
                        <spring:message code="levels.level1.part1.literals"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part1.literals.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part1.literals.about2"/>
                    </p>

                    <h3 id="integer">
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


                    <h3 id="сharacters">
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


                    <h3 id="strings">
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


                    <h3 id="remember">
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


                    <h3 id="task">
                        <spring:message code="levels.task"/>
                    </h3>
                    <form action="/level1part1.html#task" method="POST">
                        <p><spring:message code="levels.level1.part1.task"/></p>
                        <textarea id="java-editor" name='code'><c:out value="${code}"/></textarea>

                        <div class="text-center" style="padding-top: 5px">
                            <input type="submit" class="btn btn-dark" value="<spring:message code="levels.compile"/>">
                        </div>
                    </form>
                    <br/>
                    <c:if test="${result != null}">
                        <c:if test="${result}">
                            <p class="alert alert-success"><spring:message code="levels.true"/></p>
                        </c:if>
                        <c:if test="${!result}">
                            <p class="alert alert-danger">${error}</p>
                        </c:if>
                    </c:if>


                    <c:url value="/levels.html" var="levels"/>
                    <c:url value="/level1part2.html" var="level1part2"/>
                    <div class="col-lg-12 reverse">
                        <div class="text-center">
                            <a class="btn btn-primary" href="${levels}" role="button">
                                <spring:message code="levels.introMsg"/>
                            </a>
                            <a class="btn btn-primary float-right" href="${level1part2}" role="button">
                                <spring:message code="levels.nextTheme"/>
                            </a>
                        </div>
                    </div>

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
