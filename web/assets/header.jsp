<%-- 
    Document   : header
    Created on : 05-May-2023, 11:06:23 am
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- header -->
<header class="header">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="header__content">
                    <!-- header logo -->
                    <a href="<%=request.getContextPath()%>/" class="header__logo">
                        <img src="./assets/img/logo.svg" alt="">
                    </a>
                    <!-- end header logo -->

                    <!-- header nav -->
                    <ul class="header__nav">


                        <!-- dropdown -->
                        <li class="dropdown header__nav-item">
                            <a class="dropdown-toggle header__nav-link header__nav-link--more" href="#" role="button" id="dropdownMenuMore" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon ion-ios-more"></i></a>

                            <ul class="dropdown-menu header__dropdown-menu scrollbar-dropdown" aria-labelledby="dropdownMenuMore">
                                <li><a href="<%=request.getContextPath()%>/about.jsp">About</a></li>
                                <li><a href="<%=request.getContextPath()%>/contact.jsp">Contact</a></li>
                                <li><a href="<%=request.getContextPath()%>/privacy.jsp">Privacy policy</a></li>
                                <li><a href="<%=request.getContextPath()%>/login.jsp">Login</a></li>
                                <li><a href="<%=request.getContextPath()%>/register.jsp">Register</a></li>
                                <li><a href="<%=request.getContextPath()%>/forgot.jsp">Forgot password</a></li>
                            </ul>
                        </li>
                        <!-- end dropdown -->
                    </ul>
                    <!-- end header nav -->

                    <!-- header auth -->
                    <!-- <div class="header__auth" style=""> -->
                        <a href="<%=request.getContextPath()%>/login.jsp" class="header__sign-in">
                            <i class="icon ion-ios-log-in"></i>
                            <span>Login</span>
                        </a>
                    <!-- </div> -->
                    <!-- end header auth -->

                    <!-- header menu btn -->
                    <button class="header__btn" type="button">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                    <!-- end header menu btn -->
                </div>
            </div>
        </div>
    </div>
</header>
<!-- end header -->
