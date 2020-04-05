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
                        <spring:message code="levels.level1.part3"/>
                    </h1>
                </div>

                <div class="col-1 scroll">
                    <div id="list-example" class="list-group">
                        <a class="list-group-item list-group-item-action" href="#helloWorld">
                            <spring:message code="levels.level1.part3.helloWorldShort"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#terminology">
                            <spring:message code="levels.level1.part3.terminologyShort"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#underMicroscope">
                            <spring:message code="levels.level1.part3.underMicroscopeShort"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#keywords">
                            <spring:message code="levels.level1.part3.keywords"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#conclusion">
                            <spring:message code="levels.level1.part3.conclusion"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#task">
                            <spring:message code="levels.task"/>
                        </a>
                    </div>
                </div>

                <div class="col-2"></div>

                <div class="col-10">
                    <p>
                        <spring:message code="levels.level1.part3.about"/>
                    </p>

                    <h3 id="helloWorld">
                        <spring:message code="levels.level1.part3.helloWorld"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part3.helloWorld.about1"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part3.helloWorld.about2"/></textarea>
                    </form>

                    <br/>
                    <form>
                        <p>
                            <spring:message code="levels.level1.part2.output"/>
                        </p>
                        <textarea class="java-code"><spring:message code="levels.level1.part3.helloWorld.about3"/></textarea>
                    </form>
                    <br/>


                    <h3 id="terminology">
                        <spring:message code="levels.level1.part3.terminology"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part3.terminology.about1"/>
                    </p>

                    <ul>
                        <li><spring:message code="levels.level1.part3.terminology.about2"/></li>
                        <li><spring:message code="levels.level1.part3.terminology.about3"/></li>
                        <li><spring:message code="levels.level1.part3.terminology.about4"/></li>
                        <li><spring:message code="levels.level1.part3.terminology.about5"/></li>
                        <li><spring:message code="levels.level1.part3.terminology.about6"/></li>
                        <li><spring:message code="levels.level1.part3.terminology.about7"/></li>
                        <li><spring:message code="levels.level1.part3.terminology.about8"/></li>
                        <li><spring:message code="levels.level1.part3.terminology.about9"/></li>
                    </ul>


                    <h3 id="underMicroscope">
                        <spring:message code="levels.level1.part3.underMicroscope"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part3.underMicroscope.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part3.underMicroscope.about2"/>
                    </p>

                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part3.underMicroscope.about3"/></textarea>
                    </form>

                    <p>
                        <spring:message code="levels.level1.part3.underMicroscope.about4"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part3.underMicroscope.about5"/>
                    </p>

                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part3.underMicroscope.about6"/></textarea>
                    </form>

                    <p>
                        <spring:message code="levels.level1.part3.underMicroscope.about7"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part3.underMicroscope.about8"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part3.underMicroscope.about9"/>
                    </p>

                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part3.underMicroscope.about10"/></textarea>
                    </form>

                    <p>
                        <spring:message code="levels.level1.part3.underMicroscope.about11"/>
                    </p>
                    <p class="alert alert-warning">
                        <spring:message code="levels.level1.part3.underMicroscope.about12"/>
                    </p>


                    <h3 id="keywords">
                        <spring:message code="levels.level1.part3.keywords"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part3.keywords.about1"/>
                    </p>
                    <p class="alert alert-warning">
                        <spring:message code="levels.level1.part3.keywords.about2"/>
                    </p>


                    <h3 id="conclusion">
                        <spring:message code="levels.level1.part3.conclusion"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part3.conclusion.about1"/>
                    </p>


                    <h3 id="task">
                        <spring:message code="levels.task"/>
                    </h3>

                    <p><spring:message code="levels.level1.part3.task"/></p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part3.task.about"/></textarea>
                    </form>
                    <br/>


                    <form action="/level1part3.html#task" method="POST">

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


                    <c:url value="/level1part2.html" var="level1part2"/>
                    <c:url value="/levels.html" var="levels"/>
                    <c:url value="/level1part4.html" var="level1part4"/>
                    <div class="col-lg-12  reverse">
                        <div class="text-center">
                            <a class="btn btn-primary float-left" href="${level1part2}" role="button">
                                <spring:message code="levels.previousTheme"/>
                            </a>
                            <a class="btn btn-primary" href="${levels}" role="button">
                                <spring:message code="levels.introMsg"/>
                            </a>
                            <a class="btn btn-primary float-right" href="${level1part4}" role="button">
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
