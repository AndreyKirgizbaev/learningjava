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
                        <spring:message code="levels.level1.part4"/>
                    </h1>
                </div>

                <div class="col-1 scroll">
                    <div id="list-example" class="list-group">
                        <a class="list-group-item list-group-item-action" href="#declaring">
                            <spring:message code="levels.level1.part4.declaring"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#value">
                            <spring:message code="levels.level1.part4.value"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#alternative">
                            <spring:message code="levels.level1.part4.alternative"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#inference">
                            <spring:message code="levels.level1.part4.inference"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#task">
                            <spring:message code="levels.task"/>
                        </a>
                    </div>
                </div>

                <div class="col-2"></div>

                <div class="col-10">

                    <h3 id="declaring">
                        <spring:message code="levels.level1.part4.declaring"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part4.declaring.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part4.declaring.about2"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part4.declaring.about3"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.level1.part4.declaring.about4"/>
                    </p>

                    <ul>
                        <li><spring:message code="levels.level1.part4.declaring.about5"/></li>
                        <li><spring:message code="levels.level1.part4.declaring.about6"/></li>
                        <li><spring:message code="levels.level1.part4.declaring.about7"/></li>
                        <li><spring:message code="levels.level1.part4.declaring.about8"/></li>
                    </ul>

                    <p>
                        <spring:message code="levels.level1.part4.declaring.about9"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part4.declaring.about10"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.level1.part4.declaring.about11"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part4.declaring.about12"/></textarea>
                    </form>
                    <br/>

                    <p class="alert alert-warning">
                        <spring:message code="levels.level1.part4.declaring.about13"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part4.declaring.about14"/>
                    </p>


                    <h3 id="value">
                        <spring:message code="levels.level1.part4.value"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part4.value.about1"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part4.value.about2"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.level1.part4.value.about3"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part4.value.about4"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.level1.part4.value.about5"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part4.value.about6"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part4.value.about7"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.level1.part4.value.about8"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part4.value.about9"/></textarea>
                    </form>
                    <br/>


                    <h3 id="alternative">
                        <spring:message code="levels.level1.part4.alternative"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part4.alternative.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part4.alternative.about2"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part4.alternative.about3"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.level1.part4.alternative.about4"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part4.alternative.about5"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.level1.part4.alternative.about6"/>
                    </p>


                    <h3 id="inference">
                        <spring:message code="levels.level1.part4.inference"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part4.inference.about1"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part4.inference.about2"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.level1.part4.inference.about3"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part4.inference.about4"/></textarea>
                    </form>
                    <br/>
                    <p>
                        <spring:message code="levels.level1.part4.inference.about5"/>
                    </p>


                    <h3 id="task">
                        <spring:message code="levels.task"/>
                    </h3>

                    <p><spring:message code="levels.level1.part4.task"/></p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part4.task.about"/></textarea>
                    </form>
                    <br/>

                    <p><spring:message code="levels.solve"/></p>
                    <form action="/level1part4.html#task" method="POST">

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


                    <c:url value="/level1part3.html" var="level1part3"/>
                    <c:url value="/levels.html" var="levels"/>
                    <c:url value="/level1part5.html" var="level1part5"/>
                    <div class="col-lg-12  reverse">
                        <div class="text-center">
                            <a class="btn btn-primary float-left" href="${level1part3}" role="button">
                                <spring:message code="levels.previousTheme"/>
                            </a>
                            <a class="btn btn-primary" href="${levels}" role="button">
                                <spring:message code="levels.introMsg"/>
                            </a>
                            <a class="btn btn-primary float-right" href="${level1part5}" role="button">
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
