<%-- 
    Document   : details
    Created on : 05-May-2023, 10:53:43 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.movieflix.model.Items"%>
<%@page import="com.movieflix.model.Review"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <jsp:include page="./assets/imports.jsp"/>
        <link rel="stylesheet" href="./assets/css/main.css">
        <title>MovieFlix - Details</title>
    </head>
    <body class="body">
        <jsp:include page="./assets/header.jsp"/>
        <!-- details -->
        <section class="section section--details section--bg" data-bg="./assets/img/section/details.jpg">
            <!-- details content -->
            <div class="container">
                <c:forEach var="detail" items="${listDetail}">
                    <div class="row">
                        <!-- title -->
                        <div class="col-12">
                            <h1 class="section__title section__title--mb"><c:out value="${detail.title}" /></h1>
                        </div>
                        <!-- end title -->

                        <!-- content -->
                        <div class="col-12 col-xl-6">
                            <div class="card card--details">
                                <div class="row">
                                    <!-- card cover -->
                                    <div class="col-12 col-sm-5 col-md-4 col-lg-3 col-xl-5">
                                        <div class="card__cover">
                                            <img src="./assets/img/covers/<c:out value="${detail.coverImg}" />" alt="">
                                            <span class="card__rate card__rate--green"><c:out value="${detail.rating}" /></span>
                                        </div>
                                        <a href="<c:out value="${detail.ytlink}" />" class="card__trailer"><i class="icon ion-ios-play-circle"></i> Watch trailer</a>
                                    </div>
                                    <!-- end card cover -->

                                    <!-- card content -->
                                    <div class="col-12 col-md-8 col-lg-9 col-xl-7">
                                        <div class="card__content">
                                            <ul class="card__meta">
                                                <li><span>Director:</span><c:out value="${detail.director}" /></li>
                                                <li><span>Cast: <c:out value="${detail.cast}" /></span> </li>
                                                <li><span>Genre:</span> <a href="#"><c:out value="${detail.genre}" /></a>
                                                <li><span>Release year:</span> <c:out value="${detail.releaseYear}" /></li> 
                                                <li><span>Running time:</span> <c:out value="${detail.duration}" /></li>
                                            </ul>
                                            <div class="card__description"><c:out value="${detail.description}" />   
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end card content -->
                                </div>
                            </div>
                        </div>
                        <!-- end content -->

                        <!-- player -->
                        <div class="col-12 col-xl-6">
                            <% String ytlink = new String("<c:out value='${detail.ytlink}' />");%>
                            <c:set var = "embed" value = "${fn:replace(ytlink, 'watch?v=', 'embed/')}" />    
                            <iframe width="560" height="315" src="${embed}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div>
                        <!-- end player -->
                    </div>
                </c:forEach>
            </div>
            <!-- end details content -->
        </section>
        <!-- end details -->

        <!-- content -->
        <section class="content">
            <div class="content__head">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <!-- content title -->
                            <h2 class="content__title">Discover</h2>
                            <!-- end content title -->

                            <!-- content tabs nav -->
                            <ul class="nav nav-tabs content__tabs" id="content__tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true">Comments</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="false">Reviews</a>
                                </li>
                            </ul>
                            <!-- end content tabs nav -->

                            <!-- content mobile tabs nav -->
                            <div class="content__mobile-tabs" id="content__mobile-tabs">
                                <div class="content__mobile-tabs-btn dropdown-toggle" role="navigation" id="mobile-tabs" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <input type="button" value="Comments">
                                    <span></span>
                                </div>

                                <div class="content__mobile-tabs-menu dropdown-menu" aria-labelledby="mobile-tabs">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li class="nav-item"><a class="nav-link active" id="1-tab" data-toggle="tab" href="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true">Comments</a></li>

                                        <li class="nav-item"><a class="nav-link" id="2-tab" data-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="false">Reviews</a></li>

                                    </ul>
                                </div>
                            </div>
                            <!-- end content mobile tabs nav -->
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-8 col-xl-8">
                        <!-- content tabs -->
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="1-tab">
                                <div class="row">
                                    <!-- comments -->
                                    <div class="col-12">
                                        <div class="comments">			
                                            <ul class="comments__list">
                                                <c:forEach var="cmnt" items="${listComment}">
                                                    <li class="comments__item">
                                                        <div class="comments_autor">
                                                            <img class="comments__avatar" src="./assets/img/user.svg" alt="">
                                                            <span class="comments_name">Anon</span>      
                                                        </div>   
                                                        <p class="comments__text"><c:out value="${cmnt.comment}" /></p>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                            <form action="comment" method="post" class="form">
                                                <input name="itemId" type="hidden" value="${param.itemId}">
                                                <textarea id="text" name="comment" class="form__textarea" placeholder="Add comment"></textarea>
                                                <input type="submit" value="Send" class="form__btn">
                                            </form>
                                        </div>
                                    </div>
                                    <!-- end comments -->
                                </div>
                            </div>

                            <div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="2-tab">
                                <div class="row">
                                    <!-- reviews -->

                                    <div class="col-12">
                                        <div class="reviews">
                                            <ul class="reviews__list">
                                                <c:forEach var="review" items="${listReview}">
                                                    <li class="reviews__item">
                                                        <div class="reviews__autor">

                                                            <img class="reviews__avatar" src="./assets/img/user.svg" alt="">
                                                            <span class="reviews__name"><c:out value="${review.reviewTitle}" /></span>
                                                            <span class="reviews__time">Username</span>

                                                            <span class="reviews__rating reviews__rating--green"><c:out value="${review.rating}" /></span>
                                                        </div>
                                                        <p class="reviews__text"><c:out value="${review.reviewText}" /></p>
                                                    </li>
                                                </c:forEach>
                                            </ul>

                                            <form action="review" method="post" class="form">
                                                <input name="itemId" type="hidden" value="${param.itemId}">
                                                <input name="reviewTitle" type="text" class="form__input" placeholder="Title">
                                                <textarea name="reviewText" class="form__textarea" placeholder="Review"></textarea>
                                                <div class="form__slider">
                                                    <div class="form__slider-rating" id="slider__rating"></div>
                                                    <div name="rating" class="form__slider-value" id="form__slider-value"></div>
                                                </div>
                                                <input type="submit" class="form__btn" value="Send">
                                            </form>
                                        </div>
                                    </div>
                                    <!-- end reviews -->

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end content tabs -->
                </div>
            </div>
        </section>
        <script src="./assets/js/main.js"></script>
    </body>
</html>

