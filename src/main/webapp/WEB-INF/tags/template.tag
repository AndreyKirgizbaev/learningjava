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

    <!-- FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500&display=swap&subset=cyrillic" rel="stylesheet">

    <!-- CSS -->
    <link href="/resources/css/common.css" rel="stylesheet"/>
    <link href="/resources/css/header.css" rel="stylesheet"/>
    <link href="/resources/css/footer.css" rel="stylesheet"/>

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

</head>

<body>


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

</body>

</html>