<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<title>SportMasters</title>
<%@ include file="/includes/css.jsp"%>
</head>
<body>
	<%@ include file="/includes/header.jsp"%>
	<!-- Banner -->
	<section id="banner">
		<div class="inner">
			<h1>
				SportMasters: <span> <br />Reserver Votre Terrain Dès
					Maintenant
				</span>
			</h1>
			<ul class="actions">
				<li><a href="listeTerrains" class="button alt">Reserver</a></li>
			</ul>
		</div>
	</section>

	<!-- One -->
	<section id="one">
		<div class="inner">
			<header>
				<h2>Message de l'équipe</h2>
			</header>
			<p>Toute l’équipe de SportMasters est heureuse de vous accueillir pour 
			vous faire vivre l’expérience inédite 100% foot à 5. 
			Amoureux du ballon rond, formez votre équipe (entre amis ou via notre groupe Facebook City Foot Players) 
			et profitez de nos terrains pour plus d’actions et moins de temps mort. 
			SM met à votre disposition des vestiaires avec casiers sécurisés, 
			ainsi que des salles de séminaire pour vos évènements.
			</p>
			<!-- ul class="actions">
				<li><a href="#" class="button alt">Learn More</a></li>
			</ul -->
		</div>
	</section>

	<!-- Two -->
	<section id="two">
		<div class="inner">
			<article>
				<div class="content">
					<header>
						<h3>Marquez vos buts</h3>
					</header>
					<div class="image fit">
						<img src="images/pic15.jpg" alt="" />
					</div>
					<p>Cumsan mollis eros. Pellentesque a diam sit amet mi magna
						ullamcorper vehicula. Integer adipiscin sem. Nullam quis massa sit
						amet lorem ipsum feugiat tempus.</p>
				</div>
			</article>
			<article class="alt">
				<div class="content">
					<header>
						<h3>Vivez le sport</h3>
					</header>
					<div class="image fit">
						<img src="images/pic13.jpg" alt="" />
					</div>
					<p>Cumsan mollis eros. Pellentesque a diam sit amet mi magna
						ullamcorper vehicula. Integer adipiscin sem. Nullam quis massa sit
						amet lorem ipsum feugiat tempus.</p>
				</div>
			</article>
		</div>
	</section>

	<!-- Three -->
	<!--  section id="three">
		<div class="inner">
			<article>
				<div class="content">
					<span class="icon fa-laptop"></span>
					<header>
						<h3>Tempus Feugiat</h3>
					</header>
					<p>Morbi interdum mollis sapien. Sed ac risus. Phasellus
						lacinia, magna lorem ullamcorper laoreet, lectus arcu.</p>
					<ul class="actions">
						<li><a href="#" class="button alt">Learn More</a></li>
					</ul>
				</div>
			</article>
			<article>
				<div class="content">
					<span class="icon fa-diamond"></span>
					<header>
						<h3>Aliquam Nulla</h3>
					</header>
					<p>Ut convallis, sem sit amet interdum consectetuer, odio augue
						aliquam leo, nec dapibus tortor nibh sed.</p>
					<ul class="actions">
						<li><a href="#" class="button alt">Learn More</a></li>
					</ul>
				</div>
			</article>
			<article>
				<div class="content">
					<span class="icon fa-laptop"></span>
					<header>
						<h3>Sed Magna</h3>
					</header>
					<p>Suspendisse mauris. Fusce accumsan mollis eros. Pellentesque
						a diam sit amet mi ullamcorper vehicula.</p>
					<ul class="actions">
						<li><a href="#" class="button alt">Learn More</a></li>
					</ul>
				</div>
			</article>
		</div>
	</section -->
	<%@ include file="/includes/contact_footer.jsp"%>
	<%@ include file="/includes/js.jsp"%>
	<script>
		//var modal = document.getElementById('submenu');
		window.onclick = function(event) {
			if (event.target == document.getElementById('submenu')) {
				document.getElementById('submenu').style.display = "none";
			}
		}
	</script>
</body>
</html>