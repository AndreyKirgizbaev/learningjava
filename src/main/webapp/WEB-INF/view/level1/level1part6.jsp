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
                        <spring:message code="levels.level1.part6"/>
                    </h1>
                </div>

                <div class="col-1 scroll">
                    <div id="list-example" class="list-group">
                        <a class="list-group-item list-group-item-action" href="#arithmetic">
                            <spring:message code="levels.level1.part6.arithmetic"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#abbreviated">
                            <spring:message code="levels.level1.part6.abbreviated"/>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#task">
                            <spring:message code="levels.task"/>
                        </a>
                    </div>
                </div>

                <div class="col-2"></div>

                <div class="col-10">

                    <h3 id="arithmetic">
                        <spring:message code="levels.level1.part6.arithmetic"/>
                    </h3>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level1.part6.arithmetic.about1"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.output"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level1.part6.arithmetic.about2"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.level1.part6.arithmetic.about3"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level1.part6.arithmetic.about4"/></textarea>
                    </form>
                    <br/>


                    <h3 id="abbreviated">
                        <spring:message code="levels.level1.part6.abbreviated"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part6.abbreviated.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part6.abbreviated.about2"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level1.part6.abbreviated.about3"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.level1.part6.abbreviated.about4"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level1.part6.abbreviated.about5"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.level1.part6.abbreviated.about6"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part6.abbreviated.about7"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part6.abbreviated.about8"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level1.part6.abbreviated.about9"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.output"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level1.part6.abbreviated.about10"/></textarea>
                    </form>
                    <br/>

                    <p>
                        <spring:message code="levels.level1.part6.abbreviated.about11"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part6.abbreviated.about12"/>
                    </p>


                    <h3 id="task">
                        <spring:message code="levels.task"/>
                    </h3>

                    <p><spring:message code="levels.level1.part6.task"/></p>

                    <p><spring:message code="levels.solve"/></p>
                    <form>
                        <textarea id="java-editor" name='code'><c:out value="${code}"/></textarea>
                    </form>
                    <div class="text-center" style="padding-top: 5px">
                        <input type="button" class="btn btn-dark" id="compile"
                               value="<spring:message code="levels.compile"/>">
                    </div>

                    <br/>
                    <form>
                        <textarea id="answer">${answer}</textarea>
                    </form>
                    <br/>
                    <p class="alert alert-success" id="correctAnswer" style="display:none"><spring:message
                            code="levels.true"/></p>
                    <p class="alert alert-danger" id="wrongAnswer" style="display:none"><spring:message
                            code="levels.false"/></p>
                    <br/>


                    <c:url value="/level1part5.html" var="level1part5"/>
                    <c:url value="/levels.html" var="levels"/>
                    <c:url value="/level1part7.html" var="level1part7"/>
                    <div class="col-lg-12  reverse">
                        <div class="text-center">
                            <a class="btn btn-primary float-left" href="${level1part5}" role="button">
                                <spring:message code="levels.previousTheme"/>
                            </a>
                            <a class="btn btn-primary" href="${levels}" role="button">
                                <spring:message code="levels.introMsg"/>
                            </a>
                            <a class="btn btn-primary float-right" href="${level1part7}" role="button">
                                <spring:message code="levels.nextTheme"/>
                            </a>
                        </div>
                    </div>

                </div>

            </div>

        </div>

        <script>
            $(document).ready(function () {
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

                var codeFromTextArea = CodeMirror.fromTextArea(document.getElementById("java-editor"), {
                    viewportMargin: 2,
                    theme: "darcula",
                    lineNumbers: true,
                    matchBrackets: true,
                    mode: "text/x-java"
                });
                codeFromTextArea.setSize("100%", "100%");

                var compileAnswer = CodeMirror.fromTextArea(document.getElementById("answer"), {
                    readOnly: "nocursor",
                    viewportMargin: 2,
                    theme: "darcula",
                    lineNumbers: true,
                    matchBrackets: true,
                    mode: "text/x-java"
                });
                compileAnswer.setSize("100%", "100%");

                $("#compile").click(function() {

                    var code = codeFromTextArea.getValue();

                    $.ajaxSetup({
                        "contentType": "application/json"
                    });

                    var dataPayload = {"code": code};

                    $.post('http://localhost:8080/level1part6compile', JSON.stringify(dataPayload))
                        .done(function (response) {

                            compileAnswer.setValue(response["answer"]);

                            if (response["result"] === true) {
                                $("#wrongAnswer").attr("style", "display: none !important;");
                                $("#correctAnswer").attr("style", "display: block !important;");

                            } else {
                                $("#correctAnswer").attr("style", "display: none !important;");
                                $("#wrongAnswer").attr("style", "display: block !important;");
                            }

                        });
                });
            });

        </script>


    </jsp:body>

</page:template>
