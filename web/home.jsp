<%-- 
    Document   : home
    Created on : 05-May-2023, 10:49:24 am
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.movieflix.model.Items"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <jsp:include page="./assets/imports.jsp"/>
        <link rel="stylesheet" href="./assets/css/main.css">

        <title>MovieFlix - Home</title>
    </head>
    <body class="body">
        <jsp:include page="./assets/header.jsp"/> 

        <!-- home -->
        <section class="home">
            <!-- home bg -->
            <c:forEach var="item" items="${listItems}">
                <fmt:parseNumber var="releaseYear" value="${item.releaseYear}" integerOnly="true"/>
                <c:if test="${releaseYear >= 2023}"> 
                    <div class="owl-carousel home__bg">
                        <div class="item home__cover" data-bg="<c:out value='./assets/img/covers/${item.coverImg}' />"></div>
                    </div>
                    <!-- end home bg -->
                </c:if>
            </c:forEach> 


            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1 class="home__title"><b>NEW ITEMS</b> OF THIS SEASON</h1>

                        <button class="home__nav home__nav--prev" type="button">
                            <i class="icon ion-ios-arrow-round-back"></i>
                        </button>
                        <button class="home__nav home__nav--next" type="button">
                            <i class="icon ion-ios-arrow-round-forward"></i>
                        </button>
                    </div>

                    <div class="col-12">
                        <div class="owl-carousel home__carousel home__carousel--bg">
                            <c:forEach var="item" items="${listItems}">
                                <fmt:parseNumber var="releaseYear" value="${item.releaseYear}" integerOnly="true"/>
                                <c:if test="${releaseYear >= 2023}"> 
                                    <div class="card card--big">
                                        <div class="card__cover">
                                            <img src="<c:out value='./assets/img/covers/${item.coverImg}' />" alt="">
                                            <a href="<%=request.getContextPath()%>/detail?itemId=<c:out value='${item.itemId}' />" class="card__play">
                                                <i class="icon ion-ios-play"></i>
                                            </a>
                                            <span class="card__rate card__rate--green"><c:out value="${item.rating}" /></span>
                                        </div>
                                        <div class="card__content">
                                            <h3 class="card__title"><a href="<%=request.getContextPath()%>/detail?itemId=<c:out value='${item.itemId}' />"><c:out value="${item.title}" /></a></h3>
                                            <span class="card__category">
                                                <a href="#"><c:out value="${item.genre}" /></a>
                                            </span>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end home -->

        <!-- content -->
        <section class="content">
            <div class="content__head">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <!-- content title -->
                            <h2 class="content__title">New items</h2>
                            <!-- end content title -->

                            <!-- content tabs nav -->
                            <ul class="nav nav-tabs content__tabs" id="content__tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true">MOVIES</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="false">NEW RELEASES</a>
                                </li>

                            </ul>
                            <!-- end content tabs nav -->

                            <!-- content mobile tabs nav -->
                            <div class="content__mobile-tabs" id="content__mobile-tabs">
                                <div class="content__mobile-tabs-btn dropdown-toggle" role="navigation" id="mobile-tabs" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <input type="button" value="List">
                                    <span></span>
                                </div>

                                <div class="content__mobile-tabs-menu dropdown-menu" aria-labelledby="mobile-tabs">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li class="nav-item"><a class="nav-link active" id="1-tab" data-toggle="tab" href="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true">MOVIES</a></li>

                                        <li class="nav-item"><a class="nav-link" id="2-tab" data-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="false">NEW RELEASES</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- end content mobile tabs nav -->
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <!-- content tabs -->
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="1-tab">
                        <div class="row row--grid">
                            <c:forEach var="item" items="${listItems}">
                                <!-- card -->
                                <div class="col-6 col-sm-4 col-md-3 col-xl-2">
                                    <div class="card">
                                        <div class="card__cover">
                                            <img src="<c:out value='./assets/img/covers/${item.coverImg}' />" alt="">
                                            <a href="<%=request.getContextPath()%>/detail?itemId=<c:out value='${item.itemId}' />" class="card__play">
                                                <i class="icon ion-ios-play"></i>
                                            </a>
                                            <span class="card__rate card__rate--green"><c:out value="${item.rating}" /></span>
                                        </div>
                                        <div class="card__content">
                                            <h3 class="card__title"><a href="<%=request.getContextPath()%>/detail?itemId=<c:out value='${item.itemId}' />"><c:out value="${item.title}" /></a></h3>
                                            <span class="card__category">
                                                <a href="#"><c:out value="${item.genre}" /></a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <!-- end card -->
                            </c:forEach>  
                        </div>
                    </div>
                    <div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="2-tab">
                        <div class="row row--grid">
                            <c:forEach var="item" items="${listItems}">
                                <fmt:parseNumber var="releaseYear" value="${item.releaseYear}" integerOnly="true"/>
                                <c:if test="${releaseYear >= 2022}"> 
                                    <!-- card -->
                                    <div class="col-6 col-sm-4 col-md-3 col-xl-2">
                                        <div class="card">         
                                            <div class="card__cover">
                                                <img src="<c:out value='./assets/img/covers/${item.coverImg}' />" alt="">
                                                <a href="<%=request.getContextPath()%>/detail?itemId=<c:out value='${item.itemId}' />"" class="card__play">
                                                    <i class="icon ion-ios-play"></i>
                                                </a>
                                                <span class="card__rate card__rate--green"><c:out value="${item.rating}" /></span>
                                            </div>
                                            <div class="card__content">
                                                <h3 class="card__title"><a href="<%=request.getContextPath()%>/detail?itemId=<c:out value='${item.itemId}' />"><c:out value="${item.title}" /></a></h3>
                                                <span class="card__category">
                                                    <a href="#"><c:out value="${item.genre}" /></a>
                                                </span>
                                            </div>

                                        </div>
                                    </div>
                                    <!-- end card -->
                                </c:if>
                            </c:forEach>  
                        </div>
                    </div>
                    <!-- end content tabs -->
                </div>
            </div>
        </section>
        <!-- end content -->
        <jsp:include page="./assets/footer.jsp"/>
        <script src="./assets/js/main.js"></script>
    </body>
</html>