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

            <div class="level-c__content">

                <div class="level-c__content__task">
                    <div class="btn btn-blue btn-task">
                        Перейти к задаче
                    </div>
                </div>

                <div class="page__c__title">
                    <h1>
                        <spring:message code="levels.level1.part2"/>
                    </h1>
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
                        <textarea class="java-code"><spring:message
                                code="levels.level1.part2.printNumbers.about2"/></textarea>
                    </form>

                    <br/>
                    <form>
                        <p>
                            <spring:message code="levels.level1.part2.output"/>
                        </p>
                        <textarea class="java-code"><spring:message
                                code="levels.level1.part2.printNumbers.about3"/></textarea>
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


                    <c:url value="/level1part1" var="level1part1"/>
                    <c:url value="/levels" var="levels"/>
                    <c:url value="/level1part3" var="level1part3"/>
                    <div class="row">
                        <a class="btn btn-blue" href="${level1part1}" role="button">
                            <spring:message code="levels.previousTheme"/>
                        </a>
                        <a class="btn btn-blue btn-m-l-auto btn-levels" href="${levels}" role="button">
                            <spring:message code="levels.introMsg"/>
                        </a>
                        <a class="btn btn-blue btn-m-l-auto" href="${level1part3}" role="button">
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

                    $.post('http://localhost:8080/level1part1compile', JSON.stringify(dataPayload))
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

