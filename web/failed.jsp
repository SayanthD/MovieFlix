<%-- 
    Document   : failed
    Created on : 05-May-2023, 6:17:20 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <jsp:include page="./assets/imports.jsp"/>
        <title>MovieFlix - Failed</title>
</head>

<body class="body">

	<!-- page 404 -->
	<div class="page-404 section--bg" data-bg="./assets/img/section/section.jpg">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="page-404__wrap">
						<div class="page-404__content">
							<p class="page-404__title">Failed</p>
							<p class="page-404__text">Something went wrong</p>
							<a href="<%=request.getContextPath()%>/" class="page-404__btn">go back</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end page 404 -->


</body>
</html>
