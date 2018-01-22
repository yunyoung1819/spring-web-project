<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> 숙박 예약 </title>
<link rel="stylesheet" href="https://openlayers.org/en/v4.6.4/css/ol.css" type="text/css">
<!-- The line below is only needed for old environments like Internet Explorer and Android 4.x -->
<script src="https://cdn.polyfill.io/v2/polyfill.min.js?features=requestAnimationFrame,Element.prototype.classList,URL"></script>
<script src="https://openlayers.org/en/v4.6.4/build/ol.js"></script>

<style>
a.skiplink {
	position : absolute;
	clip : rect(1px, 1px, 1px, 1px);
	padding : 0;
	border : 0;
	height : 1px;
	width : 1px;
	overflow : hidden
}
a.skiplink:focus{
	clip: auto;
	height: auto;
	width: auto;
	background-color: #fff;
	padding: 0.3em;
}
#map:focus{
	 outline: #4A74A8 solid 0.15em;
}
</style>
</head>
<body>
	<a class="skiplink" href="#map">Go to map</a>
	<div id="map" class="map" tabindex="0"></div>
	<!-- <button id="zoom-out">Zoom out</button>
    <button id="zoom-in">Zoom in</button> -->
	<script>
		var map = new ol.Map({
			layers: [
				new ol.layer.Tile({
					source : new ol.source.OSM()
				})
			],
			target : 'map',
			controls : ol.control.defaults({
				attributionOptions : {
					collapsible : false
				}
			}),
			view : new ol.View({
				center : [0, 0],
				zoom : 4
			})
		});
	</script>
</body>
</html>