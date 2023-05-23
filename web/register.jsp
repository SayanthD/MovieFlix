<%-- 
    Document   : register
    Created on : 05-May-2023, 4:48:05 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <jsp:include page="./assets/imports.jsp"/>
        <link rel="stylesheet" href="./assets/css/admin.css">

        <title>MovieFlix - Register</title>
    </head>
    <body class="body">
        <div class="sign section--bg" data-bg="./assets/img/section/section.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="sign__content">
                            <!-- registration form -->
                            <form action="register" method="post" class="sign__form">
                                <a href="<%=request.getContextPath()%>/index" class="sign__logo">
                                    <img src="./assets/img/logo.svg" alt="">
                                </a>

                                <c:if test="${status=='failed'}">
                                    <span style="color: red;">${msg}</span>
                                </c:if>

                                <div class="sign__group">
                                    <label for="username" class="form-label" style="color: #fff">Username</label>
                                    <input name="username" type="text" class="sign__input form-control " placeholder="Username">
                                </div>

                                <div class="sign__group">
                                    <label for="fullName" class="form-label" style="color: #fff">Your name</label>
                                    <input name="fullName" type="text" class="sign__input form-control " placeholder="First and last name">
                                </div>

                                <div class="sign__group">
                                    <label for="email" class="form-label" style="color: #fff">Email</label>
                                    <input name="email" type="email" class="sign__input form-control " placeholder="Email">
                                </div>

                                <div class="sign__group">
                                    <label for="password" class="form-label" style="color: #fff">Password</label>
                                    <input name="password" type="password" class="sign__input form-control " minlength="4" placeholder="Password">
                                </div>

                                <div class="sign__group sign__group--checkbox">
                                    <input id="remember" name="remember" type="checkbox" checked="checked">
                                    <label for="remember">I agree to the <a href="privacy.jsp">Privacy Policy</a></label>
                                </div>                         

                                <input class="sign__btn" type="submit" value="Register">

                                <span class="sign__text">Already have an account? <a href="login.jsp">Sign in!</a></span>
                            </form>
                            <!-- registration form -->
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script src="./assetsjs/admin.js"></script>
    </body>
</html>
