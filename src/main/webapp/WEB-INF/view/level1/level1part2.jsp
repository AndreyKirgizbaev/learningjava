<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title"><spring:message code="levels.level1.part2"/></jsp:attribute>

    <jsp:body>

        <div class="container">

            <div class="row">

                <div class="col-lg-12">
                    <h1 class="pb-2 mt-4 mb-2 border-bottom">
                        <spring:message code="levels.level1.part2"/>
                    </h1>
                </div>

                <div class="col-1 scroll">
                    <div id="list-example" class="list-group">
                        <a class="list-group-item list-group-item-action" href="#print">
                            <spring:message code="levels.level1.part2.printShort"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#printNumbers">
                            <spring:message code="levels.level1.part2.printNumbers"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#task">
                            <spring:message code="levels.task"/>
                        </a>
                    </div>
                </div>

                <div class="col-2"></div>

                <div class="col-10">
                    <h3 id="print">
                        <spring:message code="levels.level1.part2.print"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part2.print.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part2.print.about2"/>
                    </p>

                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part2.print.about3"/></textarea>
                    </form>

                    <br/>
                    <form>
                        <p>
                            <spring:message code="levels.level1.part2.output"/>
                        </p>
                    <textarea class="java-code"><spring:message code="levels.level1.part2.print.about4"/></textarea>
                    </form>
                    <br/>


                    <p>
                        <spring:message code="levels.level1.part2.print.about5"/>
                    </p>

                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part2.print.about6"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.level1.part2.print.about7"/>
                    </p>

                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part2.print.about8"/></textarea>
                    </form>

                    <br/>
                    <form>
                        <p>
                            <spring:message code="levels.level1.part2.output"/>
                        </p>
                        <textarea class="java-code"><spring:message code="levels.level1.part2.print.about9"/></textarea>
                    </form>
                    <br/>

                    <h3 id="printNumbers">
                        <spring:message code="levels.level1.part2.printNumbers"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part2.printNumbers.about1"/>
                    </p>

                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part2.printNumbers.about2"/></textarea>
                    </form>

                    <br/>
                    <form>
                        <p>
                            <spring:message code="levels.level1.part2.output"/>
                        </p>
                        <textarea class="java-code"><spring:message code="levels.level1.part2.printNumbers.about3"/></textarea>
                    </form>
                    <br/>

                    <h3 id="task">
                        <spring:message code="levels.task"/>
                    </h3>

                    <p><spring:message code="levels.level1.part2.task"/></p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part2.about"/></textarea>
                    </form>
                    <br/>

                    <form action="/level1part2.html#task" method="POST">

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


                    <c:url value="/level1part1.html" var="level1part1"/>
                    <c:url value="/levels.html" var="levels"/>
                    <c:url value="/level1part3.html" var="level1part3"/>
                    <div class="col-lg-12  reverse">
                        <div class="text-center">
                            <a class="btn btn-primary float-left" href="${level1part1}" role="button">
                                <spring:message code="levels.previousTheme"/>
                            </a>
                            <a class="btn btn-primary" href="${levels}" role="button">
                                <spring:message code="levels.introMsg"/>
                            </a>
                            <a class="btn btn-primary float-right" href="${level1part3}" role="button">
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

