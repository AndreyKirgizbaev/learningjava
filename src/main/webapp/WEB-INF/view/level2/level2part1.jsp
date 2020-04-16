<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title"><spring:message code="levels.level1.part1"/></jsp:attribute>

    <jsp:body>

        <div class="level-c">

            <div class="level-c__menu">
                <div class="level-c__menu__c">
                    <a class="list-group-item list-group-item-action" href="#string">
                        <spring:message code="levels.level2.part1.string"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#createString">
                        <spring:message code="levels.level2.part1.createString"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#length">
                        <spring:message code="levels.level2.part1.length"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#useful">
                        <spring:message code="levels.level2.part1.useful"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#exceptions">
                        <spring:message code="levels.level2.part1.exceptions"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#concatenating">
                        <spring:message code="levels.level2.part1.concatenating"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#appending">
                        <spring:message code="levels.level2.part1.appending"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#compare">
                        <spring:message code="levels.level2.part1.compare"/>
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
                        <spring:message code="levels.level2.part1"/>
                    </h1>
                </div>

                <div class="col-2"></div>

                <div class="col-10">
                    <h3 id="string">
                        <spring:message code="levels.level2.part1.string"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part1.string.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part1.string.about2"/>
                    </p>
                    <ul class="p-b-15">
                        <li>
                            <spring:message code="levels.level2.part1.string.about3"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part1.string.about4"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part1.string.about5"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part1.string.about6"/>
                        </li>
                    </ul>

                    <h3 id="createString">
                        <spring:message code="levels.level2.part1.createString"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part1.createString.about1"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level2.part1.createString.about2"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part1.createString.about3"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level2.part1.createString.about4"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part1.createString.about5"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level2.part1.createString.about6"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part1.createString.about7"/>
                    </p>
                    <form class="p-b-15">
                        <textarea class="java-code"><spring:message code="levels.level2.part1.createString.about8"/></textarea>
                    </form>


                    <h3 id="length">
                        <spring:message code="levels.level2.part1.length"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part1.length.about1"/>
                    </p>
                    <ul>
                        <li>
                            <spring:message code="levels.level2.part1.length.about2"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part1.length.about3"/>
                        </li>
                    </ul>
                    <p>
                        <spring:message code="levels.level2.part1.length.about4"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level2.part1.length.about5"/></textarea>
                    </form>
                    <p class="p-b-15 alert alert-warning">
                        <spring:message code="levels.level2.part1.length.about6"/>
                    </p>


                    <h3 id="useful">
                        <spring:message code="levels.level2.part1.useful"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part1.useful.about1"/>
                    </p>
                    <ul>
                        <li>
                            <spring:message code="levels.level2.part1.useful.about2"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part1.useful.about3"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part1.useful.about4"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part1.useful.about5"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part1.useful.about6"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part1.useful.about7"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part1.useful.about8"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part1.useful.about9"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part1.useful.about10"/>
                        </li>
                    </ul>
                    <p>
                        <spring:message code="levels.level2.part1.useful.about11"/>
                    </p>
                    <form class="p-b-15">
                        <textarea class="java-code"><spring:message code="levels.level2.part1.useful.about12"/></textarea>
                    </form>

                    <h3 id="exceptions">
                        <spring:message code="levels.level2.part1.exceptions"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part1.exceptions.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part1.exceptions.about2"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level2.part1.exceptions.about3"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part1.exceptions.about4"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level2.part1.exceptions.about5"/></textarea>
                    </form>
                    <p class="p-b-15">
                        <spring:message code="levels.level2.part1.exceptions.about6"/>
                    </p>

                    <h3 id="concatenating">
                        <spring:message code="levels.level2.part1.concatenating"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part1.concatenating.about1"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level2.part1.concatenating.about2"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part1.concatenating.about3"/>
                    </p>
                    <p class="p-b-15 alert alert-warning">
                        <spring:message code="levels.level2.part1.concatenating.about4"/>
                    </p>

                    <h3 id="appending">
                        <spring:message code="levels.level2.part1.appending"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part1.appending.about1"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level2.part1.appending.about2"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part1.appending.about3"/>
                    </p>
                    <ul>
                        <li>
                            <spring:message code="levels.level2.part1.appending.about4"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part1.appending.about5"/>
                        </li>
                    </ul>
                    <p>
                        <spring:message code="levels.level2.part1.appending.about6"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level2.part1.appending.about7"/></textarea>
                    </form>
                    <p class="p-b-15">
                        <spring:message code="levels.level2.part1.appending.about8"/>
                    </p>

                    <h3 id="compare">
                        <spring:message code="levels.level2.part1.compare"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part1.compare.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part1.compare.about2"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level2.part1.compare.about3"/></textarea>
                    </form>
                    <p class="p-b-15">
                        <spring:message code="levels.level2.part1.compare.about4"/>
                    </p>


                    <h3 id="task">
                        <spring:message code="levels.task"/>
                    </h3>

                    <p><spring:message code="levels.level2.part1.task"/></p>
                    <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level2.part1.task.about"/></textarea>
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


                    <c:url value="/levels" var="levels"/>
                    <c:url value="/level2part2" var="level2part2"/>
                    <div class="row">
                        <a class="btn btn-blue btn-levels" href="${levels}" role="button">
                            <spring:message code="levels.introMsg"/>
                        </a>
                        <a class="btn btn-blue btn-m-l-auto" href="${level2part2}" role="button">
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

                    $.post('/level2part1compile', JSON.stringify(dataPayload))
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
