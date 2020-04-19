<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title"><spring:message code="levels.level2.part2"/></jsp:attribute>

    <jsp:body>

        <div class="level-c">

            <div class="level-c__menu">
                <div class="level-c__menu__c">
                    <a class="list-group-item list-group-item-action" href="#introduction">
                        <spring:message code="levels.level2.part2.introduction"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#printf">
                        <spring:message code="levels.level2.part2.printf"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#use">
                        <spring:message code="levels.level2.part2.use"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#format">
                        <spring:message code="levels.level2.part2.format"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#summary">
                        <spring:message code="levels.level2.part2.summary"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#conclusion">
                        <spring:message code="levels.level2.part2.conclusion"/>
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
                        <spring:message code="levels.level2.part2"/>
                    </h1>
                </div>

                <div class="col-2"></div>

                <div class="col-10">
                    <h3 id="introduction">
                        <spring:message code="levels.level2.part2.introduction"/>
                    </h3>
                    <p class="p-b-15">
                        <spring:message code="levels.level2.part2.introduction.about1"/>
                    </p>

                    <h3 id="printf">
                        <spring:message code="levels.level2.part2.printf"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part2.printf.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part2.printf.about2"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part2.printf.about3"/></textarea>
                    </form>
                    <ul class="p-b-15">
                        <li>
                            <spring:message code="levels.level2.part2.printf.about4"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part2.printf.about5"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part2.printf.about6"/>
                        </li>
                    </ul>


                    <h3 id="use">
                        <spring:message code="levels.level2.part2.use"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part2.use.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part2.use.about2"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level2.part2.use.about3"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part2.use.about4"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part2.use.about5"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level2.part2.use.about6"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part2.use.about7"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part2.use.about8"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level2.part2.use.about9"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part2.use.about10"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level2.part2.use.about11"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part2.use.about12"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part2.use.about13"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level2.part2.use.about14"/></textarea>
                    </form>
                    <p class="p-b-15">
                        <spring:message code="levels.level2.part2.use.about15"/>
                    </p>


                    <h3 id="format">
                        <spring:message code="levels.level2.part2.format"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part2.format.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part2.format.about2"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part2.format.about3"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part2.format.about4"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part2.format.about5"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part2.format.about6"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part2.format.about7"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part2.format.about8"/>
                    </p>
                    <form class="p-b-15">
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part2.format.about9"/></textarea>
                    </form>

                    <h3 id="summary">
                        <spring:message code="levels.level2.part2.summary"/>
                    </h3>
                    <p class="p-b-15">
                        <spring:message code="levels.level2.part2.summary.about1"/>
                    </p>
                    <table class="table">
                        <thead class="thead-dark">
                        <tr>
                            <th scope="col"><spring:message code="levels.level2.part2.summary.about2"/></th>
                            <th scope="col"><spring:message code="levels.level2.part2.summary.about3"/></th>
                            <th scope="col"><spring:message code="levels.level2.part2.summary.about4"/></th>
                            <th scope="col"><spring:message code="levels.level2.part2.summary.about5"/></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row"><spring:message code="levels.level2.part2.summary.about6"/></th>
                            <td><spring:message code="levels.level2.part2.summary.about7"/></td>
                            <td><spring:message code="levels.level2.part2.summary.about8"/></td>
                            <td><spring:message code="levels.level2.part2.summary.about9"/></td>
                        </tr>
                        <tr>
                            <th scope="row"><spring:message code="levels.level2.part2.summary.about10"/></th>
                            <td><spring:message code="levels.level2.part2.summary.about11"/></td>
                            <td><spring:message code="levels.level2.part2.summary.about12"/></td>
                            <td><spring:message code="levels.level2.part2.summary.about13"/></td>
                        </tr>
                        <tr>
                            <th scope="row"><spring:message code="levels.level2.part2.summary.about14"/></th>
                            <td><spring:message code="levels.level2.part2.summary.about15"/></td>
                            <td><spring:message code="levels.level2.part2.summary.about16"/></td>
                            <td><spring:message code="levels.level2.part2.summary.about17"/></td>
                        </tr>
                        <tr>
                            <th scope="row"><spring:message code="levels.level2.part2.summary.about18"/></th>
                            <td><spring:message code="levels.level2.part2.summary.about19"/></td>
                            <td><spring:message code="levels.level2.part2.summary.about20"/></td>
                            <td><spring:message code="levels.level2.part2.summary.about21"/></td>
                        </tr>
                        </tbody>
                    </table>

                    <h3 id="conclusion">
                        <spring:message code="levels.level2.part2.conclusion"/>
                    </h3>
                    <p class="p-b-15">
                        <spring:message code="levels.level2.part2.conclusion.about1"/>
                    </p>


                    <h3 id="task">
                        <spring:message code="levels.task"/>
                    </h3>

                    <p><spring:message code="levels.level2.part2.task"/></p>
                    <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level2.part2.task.about"/></textarea>
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


                    <c:url value="/level2part1" var="level2part1"/>
                    <c:url value="/levels" var="levels"/>
                    <c:url value="/level2part3" var="level2part3"/>
                    <div class="row">
                        <a class="btn btn-blue" href="${level2part1}" role="button">
                            <spring:message code="levels.previousTheme"/>
                        </a>
                        <a class="btn btn-blue btn-m-l-auto btn-levels" href="${levels}" role="button">
                            <spring:message code="levels.introMsg"/>
                        </a>
                        <a class="btn btn-blue btn-m-l-auto" href="${level2part3}" role="button">
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

                    $.post('/level2part2compile', JSON.stringify(dataPayload))
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
