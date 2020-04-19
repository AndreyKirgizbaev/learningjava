<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title"><spring:message code="levels.level2.part4"/></jsp:attribute>

    <jsp:body>

        <div class="level-c">

            <div class="level-c__menu">
                <div class="level-c__menu__c">
                    <a class="list-group-item list-group-item-action" href="#introduction">
                        <spring:message code="levels.level2.part4.introduction"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#declaration">
                        <spring:message code="levels.level2.part4.declaration"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#creating">
                        <spring:message code="levels.level2.part4.creating"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#new">
                        <spring:message code="levels.level2.part4.new"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#length">
                        <spring:message code="levels.level2.part4.length"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#elements">
                        <spring:message code="levels.level2.part4.elements"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#utility">
                        <spring:message code="levels.level2.part4.utility"/>
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
                        <spring:message code="levels.level2.part4"/>
                    </h1>
                </div>

                <div class="col-2"></div>

                <div class="col-10">
                    <h3 id="introduction">
                        <spring:message code="levels.level2.part4.introduction"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part4.introduction.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part4.introduction.about2"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part4.introduction.about3"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part4.introduction.about4"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part4.introduction.about5"/>
                    </p>
                    <table class="table">
                        <tbody>
                        <tr>
                            <th scope="row"><spring:message code="levels.level2.part4.introduction.about6"/></th>
                            <td>0</td>
                            <td>1</td>
                            <td>2</td>
                            <td>3</td>
                            <td>4</td>
                        </tr>
                        <tr>
                            <th scope="row"><spring:message code="levels.level2.part4.introduction.about7"/></th>
                            <td>10.8</td>
                            <td>14.3</td>
                            <td>13.5</td>
                            <td>9.5</td>
                            <td>12.1</td>
                        </tr>
                        </tbody>
                    </table>
                    <p class="alert alert-warning">
                        <spring:message code="levels.level2.part4.introduction.about8"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part4.introduction.about9"/>
                    </p>
                    <ul class="p-b-15">
                        <li>
                            <spring:message code="levels.level2.part4.introduction.about10"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part4.introduction.about11"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part4.introduction.about12"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part4.introduction.about13"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part4.introduction.about14"/>
                        </li>
                    </ul>

                    <h3 id="declaration">
                        <spring:message code="levels.level2.part4.declaration"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part4.declaration.about1"/>
                    </p>
                    <ul>
                        <li>
                            <spring:message code="levels.level2.part4.declaration.about2"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part4.declaration.about3"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part4.declaration.about4"/>
                        </li>
                    </ul>
                    <p>
                        <spring:message code="levels.level2.part4.declaration.about5"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part4.declaration.about6"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part4.declaration.about7"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part4.declaration.about8"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part4.declaration.about9"/></textarea>
                    </form>
                    <p class="p-b-15">
                        <spring:message code="levels.level2.part4.declaration.about10"/>
                    </p>

                    <h3 id="creating">
                        <spring:message code="levels.level2.part4.creating"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part4.creating.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part4.creating.about2"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part4.creating.about3"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part4.creating.about4"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part4.creating.about5"/></textarea>
                    </form>
                    <p class="p-b-15">
                        <spring:message code="levels.level2.part4.creating.about6"/>
                    </p>

                    <h3 id="new">
                        <spring:message code="levels.level2.part4.new"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part4.new.about1"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part4.new.about2"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part4.new.about3"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part4.new.about4"/>
                    </p>
                    <p class="alert alert-warning">
                        <spring:message code="levels.level2.part4.new.about5"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part4.new.about6"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part4.new.about7"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part4.new.about8"/>
                    </p>
                    <form class="p-b-15">
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part4.new.about9"/></textarea>
                    </form>

                    <h3 id="length">
                        <spring:message code="levels.level2.part4.length"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part4.length.about1"/>
                    </p>
                    <form class="p-b-15">
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part4.length.about2"/></textarea>
                    </form>

                    <h3 id="elements">
                        <spring:message code="levels.level2.part4.elements"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part4.elements.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part4.elements.about2"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part4.elements.about3"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part4.elements.about4"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part4.elements.about5"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part4.elements.about6"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part4.elements.about7"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part4.elements.about8"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part4.elements.about9"/>
                    </p>
                    <ul>
                        <li>
                            <spring:message code="levels.level2.part4.elements.about10"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part4.elements.about11"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part4.elements.about12"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part4.elements.about13"/>
                        </li>
                    </ul>
                    <p class="alert alert-info">
                        <spring:message code="levels.level2.part4.elements.about14"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part4.elements.about15"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part4.elements.about16"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part4.elements.about17"/>
                    </p>
                    <p class="p-b-15">
                        <spring:message code="levels.level2.part4.elements.about18"/>
                    </p>

                    <h3 id="utility">
                        <spring:message code="levels.level2.part4.utility"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part4.utility.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part4.utility.about2"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part4.utility.about3"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part4.utility.about4"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part4.utility.about5"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part4.utility.about6"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part4.utility.about7"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part4.utility.about8"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part4.utility.about9"/></textarea>
                    </form>
                    <p class="p-b-15">
                        <spring:message code="levels.level2.part4.utility.about10"/>
                    </p>


                    <h3 id="task">
                        <spring:message code="levels.task"/>
                    </h3>

                    <p><spring:message code="levels.level2.part4.task"/></p>
                    <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level2.part4.task.about"/></textarea>
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


                    <c:url value="/level2part3" var="level2part3"/>
                    <c:url value="/levels" var="levels"/>
                    <c:url value="/level2part5" var="level2part5"/>
                    <div class="row">
                        <a class="btn btn-blue" href="${level2part3}" role="button">
                            <spring:message code="levels.previousTheme"/>
                        </a>
                        <a class="btn btn-blue btn-m-l-auto btn-levels" href="${levels}" role="button">
                            <spring:message code="levels.introMsg"/>
                        </a>
                        <a class="btn btn-blue btn-m-l-auto" href="${level2part5}" role="button">
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

                    $.post('/level2part4compile', JSON.stringify(dataPayload))
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