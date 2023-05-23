<%-- 
    Document   : users
    Created on : 05-May-2023, 11:20:38 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.movieflix.model.Users"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <jsp:include page="./assets/imports.jsp"/>
        <link rel="stylesheet" href="./assets/css/admin.css">
        <title>MovieFlix - Users</title>
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
                <div class="row">
                    <!-- main title -->
                    <div class="col-12">
                        <div class="main__title">
                            <h2>Users</h2>

                            <span class="main__title-stat"> Total</span>

                            <!-- search <div class="main__title-wrap">

                                
                                <form action="#" class="main__title-form">
                                    <input type="text" placeholder="Find user..">
                                    <button type="button">
                                        <i class="icon ion-ios-search"></i>
                                    </button>
                                </form>
                                
                               
                            </div>
                                 search -->
                        </div>
                    </div>
                    <!-- end main title -->

                    <!-- users -->
                    <div class="col-12">
                        <div class="main__table-wrap">
                            <table class="main__table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>BASIC INFO</th>
                                        <th>USERNAME</th>
                                        <th>PRICING PLAN</th>
                                        <th>COMMENTS</th>
                                        <th>REVIEWS</th>
                                        <th>STATUS</th>
                                        <th>CREATED DATE</th>
                                        <th>ACTIONS</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <c:forEach var="user" items="${userInfo}">
                                        <tr>
                                            <td>
                                                <div class="main__table-text">0</div>
                                            </td>
                                            <td>
                                                <div class="main__user">
                                                    <div class="main__avatar">
                                                        <img src="./assets/img/user.svg" alt="">
                                                    </div>
                                                    <div class="main__meta">
                                                        <h3><c:out value="${user.fullName}" /></h3>
                                                        <span><c:out value="${user.email}" /></span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="main__table-text"><c:out value="${user.username}" /></div>
                                            </td>
                                            <td>
                                                <div class="main__table-text">Premium</div>
                                            </td>
                                            <td>
                                                <div class="main__table-text">0</div>
                                            </td>
                                            <td>
                                                <div class="main__table-text">0</div>
                                            </td>
                                            <td>
                                                <div class="main__table-text main__table-text--green"><c:out value="${user.status}" /></div>
                                            </td>
                                            <td>
                                                <div class="main__table-text">00-00-000</div>
                                            </td>
                                            <td>
                                                <div class="main__table-btns">
                                                    <a href="#modal-status" class="main__table-btn main__table-btn--banned open-modal">
                                                        <i class="icon ion-ios-lock"></i>
                                                    </a>
                                                    <a href="edit-user.jsp" class="main__table-btn main__table-btn--edit">
                                                        <i class="icon ion-ios-create"></i>
                                                    </a>
                                                    <a href="#modal-delete" class="main__table-btn main__table-btn--delete open-modal">
                                                        <i class="icon ion-ios-trash"></i>
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>   
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- end users -->
                </div>
            </div>
        </main>
        <!-- end main content -->
         <script src="./assets/js/admin.js"></script>
    </body>
</html>