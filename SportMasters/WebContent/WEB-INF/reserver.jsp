<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<title>SportMasters</title>
<link href="assets/css/popup.css" rel="stylesheet" type="text/css">
<%@ include file="/includes/css.jsp"%>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="bootstrap/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file="/includes/header.jsp"%>
	<div id="modal-wrapper" class="modal-popup2">
		<form class="modal-popup-content animate"
			action="confirmerReservation" method="post">
			<div class="imgcontainer">
				<img src="terrainsImages/${terrain.image}" alt="Avatar"
					class="avatar">
				<h3 style="text-align: center">
					Infos terrain
					</h1>
			</div>
			<div class="container">
				<h4 class="text-center">${terrain.description }</h4>
				<h5 class="text-center">Prix: ${terrain.prix }MAD/heurer</h5>
				<input type="text" id="id_date" name="id_date" value=""
					placeholder="Entrer La date pour laquelle vous voulez reserver (yyyy/mm/dd)">
				<c:if test="${! empty sessionScope.erreur_date}">
					<span>la date entrée est érronée</span>
				</c:if>
				<button type="submit">Choisir</button>
			</div>
		</form>
	</div>
	<%@ include file="/includes/footer.jsp"%>
	<%@ include file="/includes/js.jsp"%>
</body>
</html>