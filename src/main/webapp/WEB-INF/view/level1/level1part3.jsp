<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<page:template>

    <jsp:attribute name="title"><spring:message code="levels.level1.part3"/></jsp:attribute>

    <jsp:body>

        <div class="level-c">

            <div class="level-c__menu">
                <div class="level-c__menu__c">
                    <a class="list-group-item list-group-item-action" href="#helloWorld">
                        <spring:message code="levels.level1.part3.helloWorldShort"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#terminology">
                        <spring:message code="levels.level1.part3.terminologyShort"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#underMicroscope">
                        <spring:message code="levels.level1.part3.underMicroscopeShort"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#keywords">
                        <spring:message code="levels.level1.part3.keywords"/>
                    </a>
                    <a class="list-group-item list-group-item-action" href="#conclusion">
                        <spring:message code="levels.level1.part3.conclusion"/>
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
                        <spring:message code="levels.level1.part3"/>
                    </h1>
                </div>

                <div class="col-2"></div>

                <div class="col-10">
                    <p>
                        <spring:message code="levels.level1.part3.about"/>
                    </p>

                    <h3 id="helloWorld">
                        <spring:message code="levels.level1.part3.helloWorld"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part3.helloWorld.about1"/>
                    </p>
                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level1.part3.helloWorld.about2"/></textarea>
                    </form>

                    <br/>
                    <form>
                        <p>
                            <spring:message code="levels.level1.part2.output"/>
                        </p>
                        <textarea class="java-code"><spring:message
                                code="levels.level1.part3.helloWorld.about3"/></textarea>
                    </form>
                    <br/>


                    <h3 id="terminology">
                        <spring:message code="levels.level1.part3.terminology"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part3.terminology.about1"/>
                    </p>

                    <ul>
                        <li><spring:message code="levels.level1.part3.terminology.about2"/></li>
                        <li><spring:message code="levels.level1.part3.terminology.about3"/></li>
                        <li><spring:message code="levels.level1.part3.terminology.about4"/></li>
                        <li><spring:message code="levels.level1.part3.terminology.about5"/></li>
                        <li><spring:message code="levels.level1.part3.terminology.about6"/></li>
                        <li><spring:message code="levels.level1.part3.terminology.about7"/></li>
                        <li><spring:message code="levels.level1.part3.terminology.about8"/></li>
                        <li><spring:message code="levels.level1.part3.terminology.about9"/></li>
                    </ul>


                    <h3 id="underMicroscope">
                        <spring:message code="levels.level1.part3.underMicroscope"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part3.underMicroscope.about1"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part3.underMicroscope.about2"/>
                    </p>

                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level1.part3.underMicroscope.about3"/></textarea>
                    </form>

                    <p>
                        <spring:message code="levels.level1.part3.underMicroscope.about4"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part3.underMicroscope.about5"/>
                    </p>

                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level1.part3.underMicroscope.about6"/></textarea>
                    </form>

                    <p>
                        <spring:message code="levels.level1.part3.underMicroscope.about7"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part3.underMicroscope.about8"/>
                    </p>
                    <p>
                        <spring:message code="levels.level1.part3.underMicroscope.about9"/>
                    </p>

                    <form>
                        <textarea class="java-code"><spring:message
                                code="levels.level1.part3.underMicroscope.about10"/></textarea>
                    </form>

                    <p>
                        <spring:message code="levels.level1.part3.underMicroscope.about11"/>
                    </p>
                    <p class="alert alert-warning">
                        <spring:message code="levels.level1.part3.underMicroscope.about12"/>
                    </p>


                    <h3 id="keywords">
                        <spring:message code="levels.level1.part3.keywords"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part3.keywords.about1"/>
                    </p>
                    <p class="alert alert-warning">
                        <spring:message code="levels.level1.part3.keywords.about2"/>
                    </p>


                    <h3 id="conclusion">
                        <spring:message code="levels.level1.part3.conclusion"/>
                    </h3>
                    <p>
                        <spring:message code="levels.level1.part3.conclusion.about1"/>
                    </p>


                    <h3 id="task">
                        <spring:message code="levels.task"/>
                    </h3>

                    <p><spring:message code="levels.level1.part3.task"/></p>
                    <form>
                        <textarea class="java-code"><spring:message code="levels.level1.part3.task.about"/></textarea>
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


                    <c:url value="/level1part2" var="level1part2"/>
                    <c:url value="/levels" var="levels"/>
                    <c:url value="/level1part4" var="level1part4"/>
                    <div class="row">
                        <a class="btn btn-blue" href="${level1part2}" role="button">
                            <spring:message code="levels.previousTheme"/>
                        </a>
                        <a class="btn btn-blue btn-m-l-auto btn-levels" href="${levels}" role="button">
                            <spring:message code="levels.introMsg"/>
                        </a>
                        <security:authorize access="hasRole('ROLE_L1P4')" var="nextLvl"/>

                        <c:if test="${not nextLvl}">
                            <a class="btn btn-grey btn-m-l-auto" role="button" id="next">
                                <spring:message code="levels.nextTheme"/>
                            </a>
                        </c:if>

                        <c:if test="${nextLvl}">
                            <a class="btn btn-blue btn-m-l-auto" href="${level1part4}" role="button">
                                <spring:message code="levels.nextTheme"/>
                            </a>
                        </c:if>
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

                $("#compile").click(function () {

                    var code = codeFromTextArea.getValue();

                    $.ajaxSetup({
                        "contentType": "application/json"
                    });

                    var dataPayload = {"code": code};

                    $.post('/level1part3compile', JSON.stringify(dataPayload))
                        .done(function (response) {

                            compileAnswer.setValue(response["answer"]);

                            if (response["result"] === true) {
                                $("#wrongAnswer").attr("style", "display: none !important;");
                                $("#correctAnswer").attr("style", "display: block !important;");
                                $("#next").removeClass("btn-grey").addClass("btn-blue").attr("href", "${level1part4}");
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

                        var dataPayload = {"comment": comment, "theme": "13"};

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
