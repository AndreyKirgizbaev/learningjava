<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="headerTemplate" tagdir="/WEB-INF/tags" %>

<%@attribute name="title" fragment="true" %>
<%@attribute name="header" fragment="true" %>
<html>
<head>
    <title>
        <jsp:invoke fragment="title"/>
    </title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500&display=swap&subset=cyrillic" rel="stylesheet">

    <!-- CSS -->
    <link href="/resources/css/common.css" rel="stylesheet"/>
    <link href="/resources/css/header.css" rel="stylesheet"/>
    <link href="/resources/css/footer.css" rel="stylesheet"/>
    <link href="/resources/css/slideout.css" rel="stylesheet"/>

    <link href="/resources/css/index.css" rel="stylesheet"/>
    <link href="/resources/css/java.css" rel="stylesheet"/>
    <link href="/resources/css/books.css" rel="stylesheet"/>
    <link href="/resources/css/levels.css" rel="stylesheet"/>

    <!-- Font Awesome -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.js"
            integrity="sha256-2JRzNxMJiS0aHOJjG+liqsEOuBb6++9cY4dSOyiijX4=" crossorigin="anonymous"></script>

    <!-- jQuery -->
    <spring:url value="/resources/js/jquery-2.1.4.min.js" var="jqueryjs"/>
    <script src="${jqueryjs}"></script>


    <!-- Bootstrap Core JavaScript -->
    <spring:url value="/resources/js/bootstrap.min.js" var="js"/>
    <script src="${js}"></script>

    <!-- Codemirror JavaScript -->
    <spring:url value="/resources/codemirror/codemirror.js" var="codemirrorjs"/>
    <script src="${codemirrorjs}"></script>

    <!-- Codemirror CSS -->
    <spring:url value="/resources/codemirror/codemirror.css" var="codemirrorcss"/>
    <link href="${codemirrorcss}" rel="stylesheet"/>

    <!-- Codemirror Java -->
    <spring:url value="/resources/codemirror/clike.js" var="clike"/>
    <script src="${clike}"></script>

    <!-- Codemirror Theme -->
    <spring:url value="/resources/codemirror/darcula.css" var="codemirrortheme"/>
    <link href="${codemirrortheme}" rel="stylesheet"/>

    <!-- Slideout -->
    <spring:url value="/resources/js/slideout.min.js" var="slideoutjs"/>
    <script src="${slideoutjs}"></script>

</head>

<body>

    <nav id="menu">
        <div class="side-bar">
            <div class="side-bar__c">
                <div class="header__c__logo">
                    <i class="fab fa-java"></i>
                    <span>LearningJava</span>
                </div>
                <div class="side-bar__c__options">
                    <c:url value="/java" var="java"/>
                    <div class="side-bar__c__options__option">
                        <a class="nav-link" href="${java}">Java</a>
                    </div>
                    <c:url value="/books" var="books"/>
                    <div class="side-bar__c__options__option">
                        <a class="nav-link" href="${books}"><spring:message code="navMenu.books"/></a>
                    </div>
                    <c:url value="/levels" var="levels"/>
                    <div class="side-bar__c__options__option">
                        <a class="nav-link" href="${levels}"><spring:message code="navMenu.tutorial"/></a>
                    </div>
                    <c:url value="/search" var="search"/>
                    <div class="side-bar__c__options__option">
                        <a class="nav-link" href="${search}"><spring:message code="navMenu.search"/></a>
                    </div>

                    <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_SUPER_USER', 'ROLE_USER')" var="isUSer"/>

                    <c:if test="${not isUSer}">
                        <div class="side-bar__c__options__option">
                            <c:if test="${empty param.error}">
                                <a class="link link-red"><spring:message code="navMenu.notLogin"/></a>
                            </c:if>
                        </div>
                        <div class="side-bar__c__options__option">
                            <a class="nav-link" href="<c:url value="/login"/>"><spring:message
                                    code="navMenu.login"/></a>
                        </div>
                    </c:if>

                    <c:if test="${isUSer}">
                        <div class="side-bar__c__options__option">
                            <a class="nav-link" style="color: green"><spring:message code="navMenu.existLogin"/></a>
                            <a class="nav-link"><security:authentication property="principal.username"/></a>

                        </div>
                        <div class="side-bar__c__options__option">
                            <a class="nav-link" style="color: red;" href="<c:url value="/j_spring_security_logout"/>">
                                <spring:message
                                        code="navMenu.logout"/>
                            </a>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>
    </nav>

    <main id="panel">
        <headerTemplate:header-template/>

        <div class="page">
            <div class="page__c">
                <jsp:doBody/>
                <div class="footer">
                    <div class="footer__c">
                        <div class="footer__c__links">
                            <a class="link-blue" href="<%=request.getContextPath()%>?languageVar=en">EN</a>
                            <a class="link-blue" href="<%=request.getContextPath()%>?languageVar=ru">RU</a>
                        </div>
                        <p>© 2020 Copyright by Andrey Kirgizbaev</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <script>
        var slideout = new Slideout({
            'panel': document.getElementById('panel'),
            'menu': document.getElementById('menu'),
            'padding': 256,
            'tolerance': 70
        });

        $(".toggle-side-bar").click(function(e){

            slideout.open()
        })

        $("#panel").click(function(e){

            //  ___________
            //  (/(.)-(.)\)
            //  –––––––––––

            if($(e.target).attr("class") == "toggle-side-bar" ||
               $(e.target).attr("class") == "svg-inline--fa fa-bars fa-w-14" ||
               $(e.target).is("path")){
                return
            }

            if (slideout.isOpen()) {
                slideout.close();
            }
        })
    </script>

</body>

</html>