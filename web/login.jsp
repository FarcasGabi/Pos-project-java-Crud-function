<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF8"%>
<html>
    <head>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <link rel="stylesheet" href="style2.css" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset='UTF-8'" />
        <title>Login</title>
    </head>
    <body>
        
     


        <%--Navbar--%>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				
			</div><!--Navbar Headear -->
			<div class="collapse navbar-collapse" id="navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="/HttpEvents/#">Home</a></li>
					<li><a href="/HttpEvents/faces/produse/List_1.xhtml">Product</a></li>
					<li><a href="login.jsp">Login</a></li>
				</ul>
			</div><%--End navbar-collapse--%>
		</div><%--container--%>
	</nav><%--NAV--%>
        <div class="container col-md-4 col-md-offset-4" style="padding-top:5%">

            
            <form method="POST" action="j_security_check">
        <h1> Sign in </h1>
        <label for="username" class="sr-only"> Username </label>
        <input type="text" id="username" name="j_username" class="form-control" placeholder="Username" required autofocus />
        <label for="password" class="sr-only"> Password </label>
        <input type="password" id="password" name="j_password" class="form-control" placeholder="Password" required />
        <hr>
        <button type="submit"> Sign in
</button>
    </form>
            
   <ul class="navbarf-nav mr-auto">
	<c:if test = "${pageContext.request.isUserInRole('admin')}">
		<li class = "nac-item ${activePage eq 'admin' ? 'active' : ''}">
			<a class = "nac-link" href = "${pageContext.request.contextPath}/faces/produse/List_admin.xhtml">Functii director Admin</a>
		</li>
	</c:if>
        <c:if test = "${pageContext.request.isUserInRole('dg')}">
		<li class = "nac-item ${activePage eq 'dg' ? 'active' : ''}">
			<a class = "nac-link" href = "${pageContext.request.contextPath}/faces/produse/List.xhtml">Functii director general (DG)</a>
		</li>
	</c:if>
        <c:if test = "${pageContext.request.isUserInRole('casier')}">
		<li class = "nac-item ${activePage eq 'casier' ? 'active' : ''}">
			<a class = "nac-link" href = "${pageContext.request.contextPath}/faces/produse/index.xhtml">Functii casier</a>
		</li>
	</c:if>
	
        
        </ul>

        </div>
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script>$('.navbar-collapse a').click(function(){
			$(".navbar-collapse").collapse('hide');
			});
	</script>
    </body>
</html>
