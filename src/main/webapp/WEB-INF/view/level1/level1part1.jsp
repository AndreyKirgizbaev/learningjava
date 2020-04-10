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

        <div class="level-c__content">
            <div class="level-c__content__task">
                <div class="btn btn-blue btn-task">
                    Перейти к задаче
                </div>
            </div>

            <div class="page__c__title">
                <h1>
                    <spring:message code="levels.level1.part1"/>
                </h1>
            </div>

            <div class="col-2"></div>

            <div class="col-10">
                <h3 id="literals">
                    <spring:message code="levels.level1.part1.literals"/>
                </h3>
                <p>
                    <spring:message code="levels.level1.part1.literals.about1"/>
                </p>
                <p class="p-b-15">
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
                <p class="p-b-15">
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
                <p class="p-b-15">
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
                <p class="p-b-15">
                    <spring:message code="levels.level1.part1.strings.about3"/>
                </p>


                <h3 id="remember">
                    <spring:message code="levels.level1.part1.remember"/>
                </h3>
                <p>
                    <spring:message code="levels.level1.part1.remember.about1"/>
                </p>
                <ul class="p-b-15">
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
                <p><spring:message code="levels.level1.part1.task"/></p>
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


                <c:url value="/levels.html" var="levels"/>
                <c:url value="/level1part2.html" var="level1part2"/>
                <div class="row">
                    <a class="btn btn-blue btn-levels" href="${levels}" role="button">
                        <spring:message code="levels.introMsg"/>
                    </a>
                    <a class="btn btn-blue btn-m-l-auto" href="${level1part2}" role="button">
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
            window.addEventListener('scroll', function() {
                console.log("document.body.scrollTop = " + document.documentElement.scrollTop)
                if(document.documentElement.scrollTop < ($('#task').offset().top - window.innerHeight)){
                    $('.btn-task').show()
                }else{
                    $('.btn-task').hide()
                }
            })

            $('.btn-task').click(function () {
                $('html, body').animate({scrollTop: $('#task').offset().top - 120 }, 600);
            })

            $('a[href^="#"]').click(function () {
                var target = $(this).attr('href');
                $('html, body').animate({scrollTop: $(target).offset().top - 120 }, 600);
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

            $("#compile").click(function() {

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
