<%-- 
    Document   : add-item
    Created on : 05-May-2023, 11:43:34 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <jsp:include page="./assets/imports.jsp"/>
        <link rel="stylesheet" href="./assets/css/admin.css">
        <title>MovieFlix - Add item</title>
    </head>
    <body>
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
                            <h2>Add new item</h2>
                        </div>
                    </div>
                    <!-- end main title -->
                    <!-- form -->
                    <div class="col-12">
                        <c:if test="${status=='success'}">
                            <span style="color: green;">${msg}</span>
                        </c:if>

                        <c:if test="${status=='failed'}">
                            <span style="color: red;">${msg}</span>
                        </c:if>
                        <form method="post" action="add" class="form" enctype="multipart/form-data">
                            <div class="row row--form form-group">
                                <div class="col-12 col-md-5 form__cover">
                                    <div class="row row--form">
                                        <div class="col-12 col-sm-6 col-md-12">
                                            <div class="form__img">
                                                <label for="form__img-upload">Upload cover (270 x 400)</label>
                                                <input id="form__img-upload" name="coverImg" type="file" accept=".png, .jpg, .jpeg">
                                                <img id="form__img" src="#" alt=" ">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-12 col-md-7 form__content">
                                    <div class="row row--form">
                                        <div class="col-12">
                                            <input name="title" type="text" class="form__input form-control" placeholder="Title">
                                        </div>

                                        <div class="col-12">
                                            <textarea name="description" id="text" class="form__textarea form-control" placeholder="Description"></textarea>
                                        </div>

                                        <div class="col-12 col-sm-6 col-lg-3">
                                            <input name="releaseYear" type="text" class="form__input form-control" placeholder="Release year">
                                        </div>

                                        <div class="col-12 col-sm-6 col-lg-3">
                                            <input name="duration" type="text" class="form__input form-control" placeholder="Running time in min">
                                        </div>

                                        <div class="col-12 col-lg-6">
                                            <select name="genre" class="js-example-basic-multiple form-control" id="genre" multiple="multiple">
                                                <option value="Action">Action</option>
                                                <option value="Animation">Animation</option>
                                                <option value="Comedy">Comedy</option>
                                                <option value="Crime">Crime</option>
                                                <option value="Drama">Drama</option>
                                                <option value="Horror">Horror</option>
                                                <option value="Scifi">Science-fiction</option>
                                                <option value="Other">Other</option>
                                            </select>
                                        </div>
                                        <div class="col-12 col-lg-6">
                                            <input name="movieCast" type="text" class="form__input form-control" placeholder="Cast members"></div>
                                        <div class="col-12 col-lg-6">
                                            <input name="movieDirector" type="text" class="form__input form-control" placeholder="Director"></div>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="row row--form">

                                        <div class="col-12">
                                            <input name="ytlink" type="text" class="form__input" placeholder="add an Youtube link (optional)">
                                        </div>

                                        <div class="col-12">
                                            <input type="submit" class="form__btn" value="Publish">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- end form -->
                </div>
            </div>
        </main>
        <!-- end main content -->
        <script src="./assets/js/admin.js"></script>
    </body>
</html>

