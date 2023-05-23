<%-- 
    Document   : about
    Created on : 05-May-2023, 11:35:29 am
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <jsp:include page="./assets/imports.jsp"/>
        <link rel="stylesheet" href="./assets/css/main.css">
        
        <title>MovieFlix - About</title>
    <body class="body">
        <jsp:include page="./assets/header.jsp"/> 

        <!-- page title -->
        <section class="section section--first section--bg" data-bg="./assets/img/section/section.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section__wrap">
                            <!-- section title -->
                            <h2 class="section__title">About Us</h2>
                            <!-- end section title -->

                            <!-- breadcrumb -->
                            <ul class="breadcrumb">
                                <li class="breadcrumb__item"><a href="<%=request.getContextPath()%>/">Home</a></li>
                                <li class="breadcrumb__item breadcrumb__item--active">About Us</li>
                            </ul>
                            <!-- end breadcrumb -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end page title -->

        <!-- about -->
        <section class="section">
            <div class="container">
                <div class="row">
                    <!-- section title -->
                    <div class="col-12">
                        <h2 class="section__title section__title--mb"><b>MovieFlix</b> – Best Place for Movies</h2>
                    </div>
                    <!-- end section title -->

                    <!-- section text -->
                    <div class="col-12">
                        <p class="section__text">It is a long <b>established</b> fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using.</p>

                        <p class="section__text">'Content here, content here', making it look like <a href="#">readable</a> English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
                    </div>
                    <!-- end section text -->

                    <!-- feature -->
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="feature">
                            <i class="icon ion-ios-tv feature__icon"></i>
                            <h3 class="feature__title">Ultra HD</h3>
                            <p class="feature__text">If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
                        </div>
                    </div>
                    <!-- end feature -->

                    <!-- feature -->
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="feature">
                            <i class="icon ion-ios-film feature__icon"></i>
                            <h3 class="feature__title">Film</h3>
                            <p class="feature__text">All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first.</p>
                        </div>
                    </div>
                    <!-- end feature -->

                    <!-- feature -->
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="feature">
                            <i class="icon ion-ios-trophy feature__icon"></i>
                            <h3 class="feature__title">Awards</h3>
                            <p class="feature__text">It to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining.</p>
                        </div>
                    </div>
                    <!-- end feature -->

                    <!-- feature -->
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="feature">
                            <i class="icon ion-ios-notifications feature__icon"></i>
                            <h3 class="feature__title">Notifications</h3>
                            <p class="feature__text">Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>
                        </div>
                    </div>
                    <!-- end feature -->

                    <!-- feature -->
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="feature">
                            <i class="icon ion-ios-rocket feature__icon"></i>
                            <h3 class="feature__title">Rocket</h3>
                            <p class="feature__text">It to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting.</p>
                        </div>
                    </div>
                    <!-- end feature -->

                    <!-- feature -->
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="feature">
                            <i class="icon ion-ios-globe feature__icon"></i>
                            <h3 class="feature__title">Multi Language Subtitles </h3>
                            <p class="feature__text">Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>
                        </div>
                    </div>
                    <!-- end feature -->
                </div>
            </div>
        </section>
        <!-- end about -->

        <!-- partners -->
        <section class="section section--border">
            <div class="container">
                <div class="row">
                    <!-- section title -->
                    <div class="col-12">
                        <h2 class="section__title section__title--mb">Our Partners</h2>
                    </div>
                    <!-- end section title -->

                    <!-- section text -->
                    <div class="col-12">
                        <p class="section__text">It is a long <b>established</b> fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using.</p>
                    </div>
                    <!-- end section text -->

                    <!-- partner -->
                    <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                        <a href="#" class="partner">
                            <img src="./assets/img/partners/themeforest-light-background.png" alt="" class="partner__img">
                        </a>
                    </div>
                    <!-- end partner -->

                    <!-- partner -->
                    <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                        <a href="#" class="partner">
                            <img src="./assets/img/partners/audiojungle-light-background.png" alt="" class="partner__img">
                        </a>
                    </div>
                    <!-- end partner -->

                    <!-- partner -->
                    <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                        <a href="#" class="partner">
                            <img src="./assets/img/partners/codecanyon-light-background.png" alt="" class="partner__img">
                        </a>
                    </div>
                    <!-- end partner -->

                    <!-- partner -->
                    <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                        <a href="#" class="partner">
                            <img src="./assets/img/partners/photodune-light-background.png" alt="" class="partner__img">
                        </a>
                    </div>
                    <!-- end partner -->

                    <!-- partner -->
                    <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                        <a href="#" class="partner">
                            <img src="./assets/img/partners/activeden-light-background.png" alt="" class="partner__img">
                        </a>
                    </div>
                    <!-- end partner -->

                    <!-- partner -->
                    <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                        <a href="#" class="partner">
                            <img src="./assets/img/partners/3docean-light-background.png" alt="" class="partner__img">
                        </a>
                    </div>
                    <!-- end partner -->
                </div>
            </div>
        </section>
        <!-- end partners -->
        
        <jsp:include page="./assets/footer.jsp"/>
        <script src="./assets/js/main.js"></script>
    </body>
</html>
