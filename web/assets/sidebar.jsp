<%-- 
    Document   : sidebar
    Created on : 05-May-2023, 11:44:48 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- sidebar -->
<div class="sidebar">
    <!-- sidebar logo -->
    <a href="<%=request.getContextPath()%>/" class="sidebar__logo">
        <img src="./assets/img/logo.svg" alt="">
    </a>
    <!-- end sidebar logo -->

    <!-- sidebar user -->
    <div class="sidebar__user">
        <div class="sidebar__user-img">
            <img src="./assets/img/user.svg" alt="">
        </div>    
        
        <div class="sidebar__user-title">
            <span><c:out value="${role}" /></span>
            <p><c:out value="${fullName}" /></p>
        </div>

        <a href="<%=request.getContextPath()%>/logout.jsp" class="sidebar__user-btn">
            <i class="icon ion-ios-log-out"></i>
        </a>
    </div>
    <!-- end sidebar user -->

    <!-- sidebar nav -->
    <div class="sidebar__nav-wrap">
        <ul class="sidebar__nav">
            <li class="sidebar__nav-item">
                <a href="<%=request.getContextPath()%>/dashboard.jsp" class="sidebar__nav-link sidebar__nav-link--active"><i class="icon ion-ios-keypad"></i> <span>Dashboard</span></a>
            </li>
            
            <!-- disable this
            <li class="sidebar__nav-item">
                <a href="catalog.jsp" class="sidebar__nav-link"><i class="icon ion-ios-film"></i> <span>Catalog</span></a>
            </li>
            disable this -->

            <!-- collapse -->
            <li class="sidebar__nav-item">
                <a class="sidebar__nav-link" data-toggle="collapse" href="#collapseMenu" role="button" aria-expanded="false" aria-controls="collapseMenu"><i class="icon ion-ios-copy"></i> <span>Pages</span> <i class="icon ion-md-arrow-dropdown"></i></a>

                <ul class="collapse sidebar__menu" id="collapseMenu">
                    <li><a href="add-item.jsp">Add item</a></li>
                    <!-- <li><a href="edit-user.jsp">Edit user</a></li> -->
                </ul>
            </li>
            <!-- end collapse -->

            <li class="sidebar__nav-item">
                <a href="<%=request.getContextPath()%>/users" class="sidebar__nav-link"><i class="icon ion-ios-contacts"></i> <span>Users</span></a>
            </li>
            
            <!-- disable this
            <li class="sidebar__nav-item">
                <a href="comments.jsp" class="sidebar__nav-link"><i class="icon ion-ios-chatbubbles"></i> <span>Comments</span></a>
            </li>
            disable this -->
            
            <!-- disable this
            <li class="sidebar__nav-item">
                <a href="reviews.jsp" class="sidebar__nav-link"><i class="icon ion-ios-star-half"></i> <span>Reviews</span></a>
            </li>
            disable this -->

            <li class="sidebar__nav-item">
                <a href="<%=request.getContextPath()%>/" class="sidebar__nav-link"><i class="icon ion-ios-arrow-round-back"></i> <span>Back to MovieFlix</span></a>
            </li>
        </ul>
    </div>
    <!-- end sidebar nav -->

    <!-- sidebar copyright -->
    <div class="sidebar__copyright">© MovieFlix, 2023.</div>
    <!-- end sidebar copyright -->
</div>
<!-- end sidebar -->