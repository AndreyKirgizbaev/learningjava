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
                        <spring:message code="levels.level1.part5"/>
                    </h1>
                </div>

                <div class="col-1 scroll">
                    <div id="list-example" class="list-group">
                        <a class="list-group-item list-group-item-action" href="#endOfLine">
                            <spring:message code="levels.level1.part5.endOfLine"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#multiLine">
                            <spring:message code="levels.level1.part5.multiLine"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#documentationComments">
                            <spring:message code="levels.level1.part5.documentationComments"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#task">
                            <spring:message code="levels.task"/>
                        </a>
                    </div>
                </div>

                <div class="col-2"></div>

                <div class="col-10">

                    <p>
                        <spring:message code="levels.level1.part5.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part5.about2"/>
                    </p>


                    <h3 id="endOfLine">
                        <spring:message code="levels.level1.part5.endOfLine"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part5.endOfLine.about1"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part5.endOfLine.about2"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.level1.part4.declaring.about3"/>
                    </p>


                    <h3 id="multiLine">
                        <spring:message code="levels.level1.part5.multiLine"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part5.multiLine.about1"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part5.multiLine.about2"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.level1.part5.multiLine.about3"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part5.multiLine.about4"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.level1.part5.multiLine.about5"/>
                    </p>


                    <h3 id="documentationComments">
                        <spring:message code="levels.level1.part5.documentationComments"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part5.documentationComments.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part5.documentationComments.about2"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part5.documentationComments.about3"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part5.documentationComments.about4"/></textarea>
                    </form>
                    <br/>


                    <h3 id="task">
                        <spring:message code="levels.task"/>
                    </h3>

                    <p><spring:message code="levels.level1.part5.task"/></p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part5.task.about"/></textarea>
                    </form>
                    <br/>

                    <p><spring:message code="levels.solve"/></p>
                    <form action="/level1part5.html#task" method="POST">

                        <textarea id="java-editor" name='code'><c:out value="${code}"/></textarea>

                        <div class="text-center" style="padding-top: 5px">
                            <input type="submit" class="btn btn-dark" value="<spring:message code="levels.compile"/>">
                        </div>
                    </form>
                    <br/>
                    <c:if test="${result != null}">
                        <c:if test="${result}">
                            <form>
                                <textarea class="java-code">${answer}</textarea>
                            </form>
                            <p class="alert alert-success"><spring:message code="levels.true"/></p>
                        </c:if>
                        <c:if test="${!result}">
                            <form>
                                <textarea class="java-code">${answer}</textarea>
                            </form>
                            <br/>
                            <p class="alert alert-danger"><spring:message code="levels.false"/></p>
                        </c:if>
                    </c:if>
                    <br/>


                    <c:url value="/level1part4.html" var="level1part4"/>
                    <c:url value="/levels.html" var="levels"/>
                    <c:url value="/level1part6.html" var="level1part6"/>
                    <div class="col-lg-12  reverse">
                        <div class="text-center">
                            <a class="btn btn-primary float-left" href="${level1part4}" role="button">
                                <spring:message code="levels.previousTheme"/>
                            </a>
                            <a class="btn btn-primary" href="${levels}" role="button">
                                <spring:message code="levels.introMsg"/>
                            </a>
                            <a class="btn btn-primary float-right" href="${level1part6}" role="button">
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
