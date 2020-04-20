<!DOCTYPE html>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title"><spring:message code="levels.level2.part10"/></jsp:attribute>

    <jsp:body>

        <div class="level-c">

            <div class="level-c__menu">
                <div class="level-c__menu__c">
                    <a class="list-group-item list-group-item-action" href="#compile">
                        <spring:message code="levels.level2.part10.compile"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#run">
                        <spring:message code="levels.level2.part10.run"/>
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
                        <spring:message code="levels.level2.part10"/>
                    </h1>
                </div>

                <div class="col-2"></div>

                <div class="col-10">

                    <p>
                        <spring:message code="levels.level2.part10.about1"/>
                    </p>
                    <p class="p-b-15">
                        <spring:message code="levels.level2.part10.about2"/>
                    </p>

                    <h3 id="compile">
                        <spring:message code="levels.level2.part10.compile"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part10.compile.about1"/>
                    </p>
                    <ul>
                        <li>
                            <spring:message code="levels.level2.part10.compile.about2"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part10.compile.about3"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part10.compile.about4"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part10.compile.about5"/>
                        </li>
                    </ul>
                    <p>
                        <spring:message code="levels.level2.part10.compile.about6"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level2.part10.compile.about7"/></textarea>
                    </form>
                    <p>
                        <spring:message code="levels.level2.part10.compile.about8"/>
                    </p>
                    <ul>
                        <li>
                            <spring:message code="levels.level2.part10.compile.about9"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part10.compile.about10"/>
                        </li>
                    </ul>
                    <p>
                        <spring:message code="levels.level2.part10.compile.about11"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part10.compile.about12"/>
                    </p>
                    <p class="p-b-15">
                        <spring:message code="levels.level2.part10.compile.about13"/>
                    </p>

                    <h3 id="run">
                        <spring:message code="levels.level2.part10.run"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level2.part10.run.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level2.part10.run.about2"/>
                    </p>
                    <ul>
                        <li>
                            <spring:message code="levels.level2.part10.run.about3"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part10.run.about4"/>
                        </li>
                    </ul>
                    <p>
                        <spring:message code="levels.level2.part10.run.about5"/>
                    </p>
                    <ul class="p-b-15">
                        <li>
                            <spring:message code="levels.level2.part10.run.about6"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part10.run.about7"/>
                        </li>
                        <li>
                            <spring:message code="levels.level2.part10.run.about8"/>
                        </li>
                    </ul>


                    <h3 id="task">
                        <spring:message code="levels.task"/>
                    </h3>

                    <p><spring:message code="levels.level2.part10.task"/></p>
                    <form>
                    <textarea class="java-code"><spring:message
                            code="levels.level2.part10.task.about"/></textarea>
                    </form>
                    <br/>

                    <p><spring:message code="levels.solve"/></p>
                    <form>
                        <textarea id="java-editor" name='code'><c:out value="${code}"/></textarea>
                    </form>
                    <div class="text-center" style="padding-top: 20px">
                        <input type="button" class="btn btn-black" id="compile1"
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


                    <c:url value="/level2part9" var="level2part9"/>
                    <c:url value="/levels" var="levels"/>
                    <div class="row">
                        <a class="btn btn-blue" href="${level2part9}" role="button">
                            <spring:message code="levels.previousTheme"/>
                        </a>
                        <a class="btn btn-blue btn-m-l-auto btn-levels" href="${levels}" role="button">
                            <spring:message code="levels.introMsg"/>
                        </a>
                    </div>
                    <div class="row row-levels">
                        <a class="btn btn-blue btn-auto" href="${levels}" role="button">
                            <spring:message code="levels.introMsg"/>
                        </a>
                    </div>

                    <h3 id="comments">
                        <spring:message code="levels.comments"/>
                    </h3>
                    <div class="form-group">
                        <textarea id="enterComment" class="form-control"></textarea>
                    </div>
                    <div class="text-center">
                        <input type="button" class="btn btn-black" id="writeComment"
                               value="<spring:message code="levels.writeComment"/>">
                    </div>

                    <br/>
                    <br/>

                    <div>
                        <c:if test="${not empty comments}">

                            <table>
                                <c:forEach var="comment" items="#{comments}">
                                    <tr>
                                        <td><c:out value="${comment.username}"/></td>
                                        <td><c:out value="${comment.date}"/></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><c:out value="${comment.comment}"/></td>
                                    </tr>
                                </c:forEach>
                            </table>

                        </c:if>
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

                $("#compile1").click(function () {

                    var code = codeFromTextArea.getValue();

                    $.ajaxSetup({
                        "contentType": "application/json"
                    });

                    var dataPayload = {"code": code};

                    $.post('/level2part10compile', JSON.stringify(dataPayload))
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

                $("#writeComment").click(function () {

                    var comment = document.getElementById("enterComment").value;

                    if (comment === "") {
                        alert("Комментарий не может быть пустым!")
                    } else {

                        $.ajaxSetup({
                            "contentType": "application/json"
                        });

                        var dataPayload = {"comment": comment, "theme": "20"};

                        $.post('/createComment', JSON.stringify(dataPayload))
                            .done(function (response) {
                                location.reload()
                            });
                    }
                });
            });

        </script>

    </jsp:body>

</page:template>
