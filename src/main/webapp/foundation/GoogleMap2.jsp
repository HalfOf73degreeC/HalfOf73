<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyCw9eOBahNDm7_9km8-qvhuH7YjRK8scwU"></script>
<script type="text/javascript">
<c:set var="fun" value="${foundationBean}"></c:set>
var geocoder;
var map;
function initialize() {
  geocoder = new google.maps.Geocoder();
  var mapOptions = {
    zoom: 17
  }
  map = new google.maps.Map(document.getElementById('map'), mapOptions);
  codeAddress();
}
function codeAddress() {
  var address = "台北101";
  geocoder.geocode( { 'address': address}, function(results, status) {
    if (status == 'OK') {
      map.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location
      });
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}
</script>
<body onload="initialize()">
<div id="map" style="width: 320px; height: 480px;"></div>
<div>
  <input id="address" type="textbox" value="Sydney, NSW">
  <input type="button" value="Encode" onclick="codeAddress()">
</div>
</body>
</html>