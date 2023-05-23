<%-- 
    Document   : dashboard
    Created on : 05-May-2023, 11:18:18 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.movieflix.model.Items"%>
<%@page import="com.movieflix.model.Users"%>
<%@page import="com.movieflix.model.Review"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <jsp:include page="./assets/imports.jsp"/>
        <link rel="stylesheet" href="./assets/css/admin.css">
        <title>MovieFlix - Dashboard</title>
    </head>
    <body class="body">
        <!-- header -->
        <header class="header">
            <div class="header__content">
                <!-- header logo -->
                <a href="<%=request.getContextPath()%>/" class="header__logo">
                    <img src="./assets/img/logo.svg" alt="">
                </a>
                <!-- end header logo -->

                <!-- header menu btn -->
                <button class="header__btn" type="button">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
                <!-- end header menu btn -->
            </div>
        </header>
        <!-- end header -->

        <jsp:include page="./assets/sidebar.jsp"/>

        <!-- main content -->
        <main class="main">
            <div class="container-fluid">
                <div class="row row--grid">
                    <!-- main title -->
                    <div class="col-12">
                        <div class="main__title">
                            <h2>Dashboard</h2>

                            <a href="add-item.jsp" class="main__title-link">add item</a>
                        </div>
                    </div>
                    <!-- end main title -->

                    <!-- stats -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="stats">
                            <span>Unique views this month</span>
                            <p>0</p>
                            <i class="icon ion-ios-stats"></i>
                        </div>
                    </div>
                    <!-- end stats -->

                    <!-- stats -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="stats">
                            <span>Items added this month</span>
                            <p>${fn:length(listItems)}</p>
                            <i class="icon ion-ios-film"></i>
                        </div>
                    </div>
                    <!-- end stats -->

                    <!-- stats -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="stats">
                            <span>New comments</span>
                            <p>0</p>
                            <i class="icon ion-ios-chatbubbles"></i>
                        </div>
                    </div>
                    <!-- end stats -->

                    <!-- stats -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="stats">
                            <span>New reviews</span>
                            <p>${fn:length(listReviews)}</p>
                            <i class="icon ion-ios-star-half"></i>
                        </div>
                    </div>
                    <!-- end stats -->

                    <!-- dashbox -->
                    <div class="col-12 col-xl-6">
                        <div class="dashbox">
                            <div class="dashbox__title">
                                <h3><i class="icon ion-ios-trophy"></i> Top items</h3>

                                <div class="dashbox__wrap">
                                    <a class="dashbox__refresh" href="#"><i class="icon ion-ios-refresh"></i></a>
                                    <a class="dashbox__more" href="catalog.html">View All</a>
                                </div>
                            </div>

                            <div class="dashbox__table-wrap">
                                <table class="main__table main__table--dash">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>TITLE</th>
                                            <th>CATEGORY</th>
                                            <th>RATING</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="item" items="${listItems}" begin="1" end="5">
                                            <tr>
                                                <td>
                                                    <div class="main__table-text"><c:out value="${item.itemId}" /></div>
                                                </td>
                                                <td>
                                                    <div class="main__table-text"><a href="#"><c:out value="${item.title}" /></a></div>
                                                </td>
                                                <td>
                                                    <div class="main__table-text">Movie</div>
                                                </td>
                                                <td>
                                                    <div class="main__table-text main__table-text--rate"><i class="icon ion-ios-star"></i><c:out value="${item.rating}" /></div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- end dashbox -->

                        <!-- dashbox -->
                        <div class="col-12 col-xl-6">
                            <div class="dashbox">
                                <div class="dashbox__title">
                                    <h3><i class="icon ion-ios-film"></i> Latest items</h3>

                                    <div class="dashbox__wrap">
                                        <a class="dashbox__refresh" href="#"><i class="icon ion-ios-refresh"></i></a>
                                        <a class="dashbox__more" href="catalog.html">View All</a>
                                    </div>
                                </div>

                                <div class="dashbox__table-wrap">
                                    <table class="main__table main__table--dash">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>TITLE</th>
                                                <th>CATEGORY</th>
                                                <th>STATUS</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="item" items="${listItems}" begin="1" end="5">
                                            <tr>
                                                <td>
                                                    <div class="main__table-text"><c:out value="${item.itemId}" /></div>
                                                </td>
                                                <td>
                                                    <div class="main__table-text"><a href="#"><c:out value="${item.title}" /></a></div>
                                                </td>
                                                <td>
                                                    <div class="main__table-text">Movie</div>
                                                </td>
                                                <td>
                                                    <div class="main__table-text main__table-text--green">Visible</div>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- end dashbox -->

                        <!-- dashbox -->
                        <div class="col-12 col-xl-6">
                            <div class="dashbox">
                                <div class="dashbox__title">
                                    <h3><i class="icon ion-ios-contacts"></i> Latest users</h3>

                                    <div class="dashbox__wrap">
                                        <a class="dashbox__refresh" href="#"><i class="icon ion-ios-refresh"></i></a>
                                        <a class="dashbox__more" href="users.html">View All</a>
                                    </div>
                                </div>

                                <div class="dashbox__table-wrap">
                                    <table class="main__table main__table--dash">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>FULL NAME</th>
                                                <th>EMAIL</th>
                                                <th>USERNAME</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="user" items="${userInfo}" begin="1" end="5">
                                            <tr>
                                                <td>
                                                    <div class="main__table-text">0</div>
                                                </td>
                                                <td>
                                                    <div class="main__table-text"><a href="#"><c:out value="${user.fullName}" /></a></div>
                                                </td>
                                                <td>
                                                    <div class="main__table-text main__table-text--grey"><c:out value="${user.email}" /></div>
                                                </td>
                                                <td>
                                                    <div class="main__table-text"><c:out value="${user.username}" /></div>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- end dashbox -->

                        <!-- dashbox -->
                        <div class="col-12 col-xl-6">
                            <div class="dashbox">
                                <div class="dashbox__title">
                                    <h3><i class="icon ion-ios-star-half"></i> Latest reviews</h3>

                                    <div class="dashbox__wrap">
                                        <a class="dashbox__refresh" href="#"><i class="icon ion-ios-refresh"></i></a>
                                        <a class="dashbox__more" href="reviews.jsp">View All</a>
                                    </div>
                                </div>

                                <div class="dashbox__table-wrap">
                                    <table class="main__table main__table--dash">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>ITEM</th>
                                                <th>AUTHOR</th>
                                                <th>RATING</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="review" items="${listReviews}" begin="1" end="5">
                                            <tr>
                                                <td>
                                                    <div class="main__table-text"><c:out value="${review.reviewId}" /></div>
                                                </td>
                                                <td>
                                                    <div class="main__table-text"><c:out value="${review.itemId}" /><a href="#"></a></div>
                                                </td>
                                                <td>
                                                    <div class="main__table-text"><c:out value="${review.userId}" /></div>
                                                </td>
                                                <td>
                                                    <div class="main__table-text main__table-text--rate"><i class="icon ion-ios-star"></i><c:out value="${review.rating}" /></div>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- end dashbox -->
                    </div>
                </div>
            </main>
            <!-- end main content -->
            <script src="./assets/js/admin.js"></script>
        </body>
    </html>
