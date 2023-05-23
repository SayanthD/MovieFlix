<%-- 
    Document   : login
    Created on : 05-May-2023, 11:45:26 am
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
        <title>MovieFlix - Login</title>
    </head>
    <body class="body">
        <div class="sign section--bg" data-bg="./assets/img/section/section.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="sign__content">
                            <!-- authorization form -->
                            <form action="login" method="post" class="sign__form">
                                <a href="<%=request.getContextPath()%>/" class="sign__logo">
                                    <img src="./assets/img/logo.svg" alt="">
                                </a>

                                <c:if test="${status=='failed'}">
                                    <span style="color: red;">${msg}</span>
                                </c:if>

                                <div class="sign__group form-group">
                                    <label for="email" class="form-label" style="color: #fff">Email</label>
                                    <input name="email" type="email" class="sign__input form-control" placeholder="Email">
                                </div>

                                <div class="sign__group">
                                    <label for="password" class="form-label" style="color: #fff">Password</label>
                                    <span style="font-size: 14px; margin-left: 90px;" class="sign__text"><a href="forgot.jsp">Forgot password?</a></span>
                                    <input name="password" type="password" class="sign__input form-control" placeholder="Password">
                                </div>

                                <div class="sign__group sign__group--checkbox">
                                    <input id="remember" name="remember" type="checkbox" checked="checked">
                                    <label for="remember">Remember Me</label>
                                </div>

                                <input class="sign__btn" type="submit" value="Login">

                                <span class="sign__text">Don't have an account? <a href="<%=request.getContextPath()%>/register.jsp">Sign up!</a></span>
                            </form>
                            <!-- end authorization form -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="./assets/js/admin.js"></script>
    </body>
</html>
