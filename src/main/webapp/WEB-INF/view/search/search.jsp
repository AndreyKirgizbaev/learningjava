<!DOCTYPE html>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title"><spring:message code="search.introMsg"/></jsp:attribute>

    <jsp:body>

        <div class="level-c">

            <div class="level-c__content">

                <div class="page__c__title">
                    <h1>
                        <spring:message code="search.introMsg"/>
                    </h1>
                </div>

                <div class="col-2"></div>

                <div class="col-10">

                    <c:if test="${pageContext.response.locale == 'ru'}">

                        <h3>
                            А
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part6">
                                    <spring:message code="levels.level1.part6"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            Б
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part3#terminology">
                                    <spring:message code="search.block"/>
                                </a>
                            </li>
                        </ul>


                        <%--                        <h3>--%>
                        <%--                            В--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>


                        <%--                        <h3>--%>
                        <%--                            Г--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>

                        <h3>
                            Д
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part4#length">
                                    <spring:message code="levels.level2.part4.length"/>
                                </a>
                            </li>
                        </ul>

                        <%--                        <h3>--%>
                        <%--                            Е--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>

                        <%--                        <h3>--%>
                        <%--                            Ё--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>

                        <%--                        <h3>--%>
                        <%--                            Ж--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>

                        <%--                        <h3>--%>
                        <%--                            З--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>

                        <h3>
                            И
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part3#terminology">
                                    <spring:message code="search.identifier"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part4">
                                    <spring:message code="search.initialization"/>
                                </a>
                            </li>
                        </ul>

                        <%--                        <h3>--%>
                        <%--                            Й--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>

                        <h3>
                            К
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part3#terminology">
                                    <spring:message code="search.keyword"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part3#terminology">
                                    <spring:message code="search.comment"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            Л
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part1">
                                    <spring:message code="levels.level1.part1.literals"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            М
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part4">
                                    <spring:message code="levels.level2.part4"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part3#terminology">
                                    <spring:message code="search.method"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part5#multiLine">
                                    <spring:message code="levels.level1.part5.multiLine"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part10">
                                    <spring:message code="levels.level1.part10.switch"/>
                                </a>
                            </li>
                        </ul>

                        <%--                        <h3>--%>
                        <%--                            Н--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>

                        <h3>
                            О
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part3#terminology">
                                    <spring:message code="search.operator"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part4">
                                    <spring:message code="search.assignment"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part8">
                                    <spring:message code="levels.level1.part8.if"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            П
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part8">
                                    <spring:message code="levels.level2.part8"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part4">
                                    <spring:message code="search.variable"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part3#terminology">
                                    <spring:message code="search.program"/>
                                </a>
                            </li>
                        </ul>

                        <%--                        <h3>--%>
                        <%--                            Р--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>

                        <h3>
                            С
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part1#сharacters">
                                    <spring:message code="levels.level1.part1.сharacters"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part3#terminology">
                                    <spring:message code="search.syntax"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part6#abbreviated">
                                    <spring:message code="levels.level1.part6.abbreviated"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part2">
                                    <spring:message code="search.output"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part1#strings">
                                    <spring:message code="levels.level1.part1.strings"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            Т
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part3">
                                    <spring:message code="levels.level2.part3"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part4">
                                    <spring:message code="search.type"/>
                                </a>
                            </li>
                        </ul>

                        <%--                        <h3>--%>
                        <%--                            У--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>

                        <%--                        <h3>--%>
                        <%--                            Ф--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>

                        <%--                        <h3>--%>
                        <%--                            Х--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>

                        <h3>
                            Ц
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part1#literals">
                                    <spring:message code="levels.level1.part1.integer"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part10#for">
                                    <spring:message code="levels.level1.part10.for"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part10#while">
                                    <spring:message code="levels.level1.part10.while"/>
                                </a>
                            </li>
                        </ul>

                        <%--                        <h3>--%>
                        <%--                            Ч--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>

                        <%--                        <h3>--%>
                        <%--                            Ш--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>

                        <%--                        <h3>--%>
                        <%--                            Щ--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>

                        <%--                        <h3>--%>
                        <%--                            Э--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>

                        <%--                        <h3>--%>
                        <%--                            Ю--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>

                        <%--                        <h3>--%>
                        <%--                            Я--%>
                        <%--                        </h3>--%>
                        <%--                        <ul class="p-b-15">--%>
                        <%--                        </ul>--%>


                        <h3>
                            B
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part8#boolean">
                                    <spring:message code="search.boolean"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            C
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part1#length">
                                    <spring:message code="search.charAt"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part3#underMicroscope">
                                    <spring:message code="search.class"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.contains"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            D
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part7">
                                    <spring:message code="search.double"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            E
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.endsWith"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1#compare">
                                    <spring:message code="search.equals"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            F
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part2#format">
                                    <spring:message code="search.format"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part5#iterating">
                                    <spring:message code="search.for-each"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            I
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.isEmpty"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            L
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part1#length">
                                    <spring:message code="search.length"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            M
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part3">
                                    <spring:message code="search.main"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            N
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part1#exceptions">
                                    <spring:message code="search.nullPointerException"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            P
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part2">
                                    <spring:message code="search.print"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part2">
                                    <spring:message code="search.printf"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            R
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.replace"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part9">
                                    <spring:message code="search.return"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            S
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.startsWith"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1">
                                    <spring:message code="levels.level2.part1"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1#exceptions">
                                    <spring:message code="search.stringIndexOutOfBoundsException"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.substring"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part2">
                                    <spring:message code="search.system"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            T
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.toLowerCase"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.trim"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.toUpperCase"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            V
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part4#inference">
                                    <spring:message code="search.var"/>
                                </a>
                            </li>
                        </ul>

                    </c:if>



                    <c:if test="${pageContext.response.locale == 'en'}">

                        <h3>
                            A
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part6#abbreviated">
                                    <spring:message code="levels.level1.part6.abbreviated"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part6">
                                    <spring:message code="levels.level1.part6"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part4">
                                    <spring:message code="levels.level2.part4"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part4">
                                    <spring:message code="search.assignment"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            B
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part3#terminology">
                                    <spring:message code="search.block"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part8#boolean">
                                    <spring:message code="search.boolean"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part8">
                                    <spring:message code="levels.level1.part8.if"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            C
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part1#сharacters">
                                    <spring:message code="levels.level1.part1.сharacters"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1#length">
                                    <spring:message code="search.charAt"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part3#underMicroscope">
                                    <spring:message code="search.class"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part3#terminology">
                                    <spring:message code="search.comment"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.contains"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            D
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part7">
                                    <spring:message code="search.double"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            E
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.endsWith"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1#compare">
                                    <spring:message code="search.equals"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            F
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part10#for">
                                    <spring:message code="levels.level1.part10.for"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part2#format">
                                    <spring:message code="search.format"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part5#iterating">
                                    <spring:message code="search.for-each"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            I
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part3#terminology">
                                    <spring:message code="search.identifier"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part4">
                                    <spring:message code="search.initialization"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part1#literals">
                                    <spring:message code="levels.level1.part1.integer"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.isEmpty"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            K
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part3#terminology">
                                    <spring:message code="search.keyword"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            L
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part1#length">
                                    <spring:message code="search.length"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part4#length">
                                    <spring:message code="levels.level2.part4.length"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part1">
                                    <spring:message code="levels.level1.part1.literals"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            M
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part3">
                                    <spring:message code="search.main"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part3#terminology">
                                    <spring:message code="search.method"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part5#multiLine">
                                    <spring:message code="levels.level1.part5.multiLine"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part10">
                                    <spring:message code="levels.level1.part10.switch"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            N
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part1#exceptions">
                                    <spring:message code="search.nullPointerException"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            O
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part3#terminology">
                                    <spring:message code="search.operator"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part8">
                                    <spring:message code="levels.level2.part8"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            P
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part2">
                                    <spring:message code="search.print"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part2">
                                    <spring:message code="search.printf"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part3#terminology">
                                    <spring:message code="search.program"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            R
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.replace"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part9">
                                    <spring:message code="search.return"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            S
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part2">
                                    <spring:message code="search.output"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.startsWith"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1">
                                    <spring:message code="levels.level2.part1"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1#exceptions">
                                    <spring:message code="search.stringIndexOutOfBoundsException"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.substring"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part3#terminology">
                                    <spring:message code="search.syntax"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part2">
                                    <spring:message code="search.system"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            T
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level2part3">
                                    <spring:message code="levels.level2.part3"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.toLowerCase"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.trim"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level2part1#useful">
                                    <spring:message code="search.toUpperCase"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part4">
                                    <spring:message code="search.type"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            V
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part4#inference">
                                    <spring:message code="search.var"/>
                                </a>
                            </li>
                            <li>
                                <a href="/level1part4">
                                    <spring:message code="search.variable"/>
                                </a>
                            </li>
                        </ul>

                        <h3>
                            W
                        </h3>
                        <ul class="p-b-15">
                            <li>
                                <a href="/level1part10#while">
                                    <spring:message code="levels.level1.part10.while"/>
                                </a>
                            </li>
                        </ul>

                    </c:if>
                </div>
            </div>
        </div>

    </jsp:body>

</page:template>
