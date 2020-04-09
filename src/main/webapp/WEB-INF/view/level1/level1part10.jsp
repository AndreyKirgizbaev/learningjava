<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title"><spring:message code="levels.level1.part2"/></jsp:attribute>

    <jsp:body>

    <div class="level-c">

        <div class="level-c__menu">
            <div class="level-c__menu__c">
                <a class="list-group-item list-group-item-action" href="#switch">
                    <spring:message code="levels.level1.part10.switch"/>
                </a>
                <a class="list-group-item list-group-item-action" href="#for">
                    <spring:message code="levels.level1.part10.for"/>
                </a>
                <a class="list-group-item list-group-item-action" href="#while">
                    <spring:message code="levels.level1.part10.while"/>
                </a>
                <a class="list-group-item list-group-item-action" href="#task">
                    <spring:message code="levels.task"/>
                </a>
            </div>
        </div>

        <div class="level-c__content">

            <div class="page__c__title">
                <h1>
                    <spring:message code="levels.level1.part10"/>
                </h1>
            </div>

            <div class="col-2"></div>

            <div class="col-10">

                <h3 id="switch">
                    <spring:message code="levels.level1.part10.switch"/>
                </h3>
                <p>
                    <spring:message code="levels.level1.part10.switch.about1"/>
                </p>
                <p>
                    <spring:message code="levels.level1.part10.switch.about2"/>
                </p>
                <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level1.part10.switch.about3"/></textarea>
                </form>
                <br/>

                <p>
                    <spring:message code="levels.level1.part10.switch.about4.example"/>
                </p>
                <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level1.part10.switch.about4"/></textarea>
                </form>
                <br/>

                <p>
                    <spring:message code="levels.output"/>
                </p>
                <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level1.part10.switch.about5"/></textarea>
                </form>
                <br/>

                <p>
                    <spring:message code="levels.level1.part10.switch.about6"/>
                </p>
                <p>
                    <spring:message code="levels.level1.part10.switch.about7"/>
                </p>
                <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level1.part10.switch.about8"/></textarea>
                </form>
                <br/>

                <h3 id="for">
                    <spring:message code="levels.level1.part10.for"/>
                </h3>
                <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level1.part10.for.about1"/></textarea>
                </form>
                <br/>

                <p>
                    <spring:message code="levels.level1.part10.for.about2"/>
                </p>
                <p>
                    <spring:message code="levels.level1.part10.for.about3"/>
                </p>
                <p>
                    <spring:message code="levels.level1.part10.for.about4"/>
                </p>
                <p>
                    <spring:message code="levels.level1.part10.for.about5"/>
                </p>
                <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level1.part10.for.about6"/></textarea>
                </form>
                <br/>

                <p>
                    <spring:message code="levels.level1.part10.for.about7"/>
                </p>
                <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level1.part10.for.about8"/></textarea>
                </form>
                <br/>

                <p>
                    <spring:message code="levels.level1.part10.for.about9"/>
                </p>
                <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level1.part10.for.about10"/></textarea>
                </form>
                <br/>

                <p>
                    <spring:message code="levels.level1.part10.for.about7"/>
                </p>
                <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level1.part10.for.about11"/></textarea>
                </form>
                <br/>

                <h3 id="while">
                    <spring:message code="levels.level1.part10.while"/>
                </h3>
                <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level1.part10.while.about1"/></textarea>
                </form>
                <br/>

                <p>
                    <spring:message code="levels.level1.part10.while.about2"/>
                </p>
                <p>
                    <spring:message code="levels.level1.part10.while.about3"/>
                </p>
                <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level1.part10.while.about4"/></textarea>
                </form>
                <br/>

                <p>
                    <spring:message code="levels.level1.part10.while.about5"/>
                </p>
                <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level1.part10.while.about6"/></textarea>
                </form>
                <br/>

                <p>
                    <spring:message code="levels.level1.part10.while.about7"/>
                </p>


                <h3 id="task">
                    <spring:message code="levels.task"/>
                </h3>

                <p><spring:message code="levels.level1.part10.task"/></p>
                <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level1.part10.task.about"/></textarea>
                </form>
                <br/>

                <p><spring:message code="levels.solve"/></p>
                <form>
                    <textarea id="java-editor" name='code'><c:out value="${code}"/></textarea>
                </form>
                <div class="text-center" style="padding-top: 20px">
                    <input type="button" class="btn btn-black" id="compile"
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


                <c:url value="/level1part9.html" var="level1part9"/>
                <c:url value="/levels.html" var="levels"/>
                <div class="row">
                    <a class="btn btn-blue" href="${level1part9}" role="button">
                        <spring:message code="levels.previousTheme"/>
                    </a>
                    <a class="btn btn-blue btn-m-l-auto" href="${levels}" role="button">
                        <spring:message code="levels.introMsg"/>
                    </a>
                </div>

            </div>

        </div>

    </div>

    <script>

        $('a[href^="#"]').click(function () {
            var target = $(this).attr('href');
            $('html, body').animate({scrollTop: $(target).offset().top - 120 }, 600);
            return false;
        });

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

                $.post('http://localhost:8080/level1part10compile', JSON.stringify(dataPayload))
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
