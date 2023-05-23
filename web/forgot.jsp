<%-- 
    Document   : forgot
    Created on : 05-May-2023, 4:55:12 pm
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
        <title>MovieFlix - Forgot password</title>
    </head>
    <body class="body">
        <div class="sign section--bg" data-bg="./assets/img/section/section.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="sign__content"> 
                            <!-- authorization form -->
                            <form action="forgot" method="post" class="sign__form">
                                <a href="<%=request.getContextPath()%>/" class="sign__logo">
                                    <img src="./assets/img/logo.svg" alt="">
                                </a>     
                                <c:if test="${status=='success'}">
                                    <span style="color: green;">${msg}</span>
                                </c:if>
                                <c:if test="${status=='failed'}">
                                    <span style="color: red;">${msg}</span>
                                </c:if>

                                <div class="sign__group form-group">
                                    <label for="email" class="form-label" style="color: #fff">Email</label>
                                    <input name="email" type="email" class="sign__input form-control" placeholder="someone@email.com">
                                </div>

                                <input class="sign__btn" type="submit" value="Sent reset link">

                                <span class="sign__text">We will send a reset link to your Email</span>
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
