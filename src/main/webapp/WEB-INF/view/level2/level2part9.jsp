<!DOCTYPE html>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title"><spring:message code="levels.level2.part9"/></jsp:attribute>

    <jsp:body>

        <div class="level-c">

            <div class="level-c__menu">
                <div class="level-c__menu__c">
                    <a class="list-group-item list-group-item-action" href="#passing">
                        <spring:message code="levels.level2.part9.passing"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#varargs">
                        <spring:message code="levels.level2.part9.varargs"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#parameters">
                        <spring:message code="levels.level2.part9.parameters"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#task">
                        <spring:message code="levels.task"/>
                    </a>
                </div>
            </div>

            <div class="level-c__content">
                <div class="level-c__content__task">
                    <div class="btn btn-blue btn-task">
                        <spring:message code="levels.goToTask"/>
                    </div>
                </div>

                <div class="page__c__title">
                    <h1>
                        <spring:message code="levels.level2.part9"/>
                    </h1>
                </div>

                <div class="col-2"></div>

                <div class="col-10">
                    <h3 id="passing">
                        <spring:message code="levels.level2.part9.passing"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part9.passing.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part9.passing.about2"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part9.passing.about3"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part9.passing.about4"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part9.passing.about5"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part9.passing.about6"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part9.passing.about7"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part9.passing.about8"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part9.passing.about9"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part9.passing.about10"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part9.passing.about11"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part9.passing.about12"/></textarea>
                    </form>
                    <p class="p-b-15">
                        <spring:message code="levels.level2.part9.passing.about13"/>
                    </p>

                    <h3 id="varargs">
                        <spring:message code="levels.level2.part9.varargs"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part9.varargs.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part9.varargs.about2"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part9.varargs.about3"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part9.varargs.about4"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part9.varargs.about5"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part9.varargs.about6"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part9.varargs.about7"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part9.varargs.about8"/></textarea>
                    </form>
                    <p class="p-b-15">
                        <spring:message code="levels.level2.part9.varargs.about9"/>
                    </p>

                    <h3 id="parameters">
                        <spring:message code="levels.level2.part9.parameters"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part9.parameters.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part9.parameters.about2"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part9.parameters.about3"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part9.parameters.about4"/>
                    </p>
                    <form class="p-b-15">
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part9.parameters.about5"/></textarea>
                    </form>


                    <h3 id="task">
                        <spring:message code="levels.task"/>
                    </h3>

                    <p><spring:message code="levels.level2.part9.task"/></p>
                    <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level2.part9.task.about"/></textarea>
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


                    <c:url value="/level2part8" var="level2part8"/>
                    <c:url value="/levels" var="levels"/>
                    <c:url value="/level2part10" var="level2part10"/>
                    <div class="row">
                        <a class="btn btn-blue" href="${level2part8}" role="button">
                            <spring:message code="levels.previousTheme"/>
                        </a>
                        <a class="btn btn-blue btn-m-l-auto btn-levels" href="${levels}" role="button">
                            <spring:message code="levels.introMsg"/>
                        </a>
                        <a class="btn btn-blue btn-m-l-auto" href="${level2part10}" role="button">
                            <spring:message code="levels.nextTheme"/>
                        </a>
                    </div>
                    <div class="row row-levels">
                        <a class="btn btn-blue btn-auto" href="${levels}" role="button">
                            <spring:message code="levels.introMsg"/>
                        </a>
                    </div>

                </div>
            </div>
        </div>

        <script>
            $(document).ready(function () {

                // Show / hide GoTo task btn on mobile version
                window.addEventListener('scroll', function () {
                    if (document.documentElement.scrollTop < ($('#task').offset().top - window.innerHeight)) {
                        $('.btn-task').show()
                    } else {
                        $('.btn-task').hide()
                    }
                })

                $('.btn-task').click(function () {
                    $('html, body').animate({scrollTop: $('#task').offset().top - 120}, 600);
                })

                $('a[href^="#"]').click(function () {
                    var target = $(this).attr('href');
                    $('html, body').animate({scrollTop: $(target).offset().top - 120}, 600);
                    return false;
                });

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

                $("#compile").click(function () {

                    var code = codeFromTextArea.getValue();

                    $.ajaxSetup({
                        "contentType": "application/json"
                    });

                    var dataPayload = {"code": code};

                    $.post('/level2part9compile', JSON.stringify(dataPayload))
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
