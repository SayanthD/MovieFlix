<%-- 
    Document   : footer
    Created on : 05-May-2023, 11:21:36 am
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- footer -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="footer__content">
                    <a href="<%=request.getContextPath()%>/" class="footer__logo">
                        <img src="./assets/img/logo.svg" alt="">
                    </a>

                    <span class="footer__copyright">© MovieFlix, 2023 </span>

                    <nav class="footer__nav">
                        <a href="<%=request.getContextPath()%>/about.jsp">About Us</a>
                        <a href="<%=request.getContextPath()%>/contacts.jsp">Contacts</a>
                        <a href="<%=request.getContextPath()%>/privacy.jsp">Privacy policy</a>
                    </nav>

                    <button class="footer__back" type="button">
                        <i class="icon ion-ios-arrow-round-up"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- end footer -->
