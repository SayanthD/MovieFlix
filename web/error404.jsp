<%-- 
    Document   : error404
    Created on : 05-May-2023, 11:19:04 am
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <jsp:include page="./assets/imports.jsp"/>
        <link rel="stylesheet" href="./assets/css/main.css">
        <title>MovieFlix</title>
</head>

<body class="body">

	<!-- page 404 -->
	<div class="page-404 section--bg" data-bg="./assets/img/section/section.jpg">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="page-404__wrap">
						<div class="page-404__content">
							<h1 class="page-404__title">404</h1>
							<p class="page-404__text">The page you are looking for not available!</p>
							<a href="<%=request.getContextPath()%>/" class="page-404__btn">go back</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end page 404 -->
<script src="./assets/js/main.js"></script>

</body>
</html>
