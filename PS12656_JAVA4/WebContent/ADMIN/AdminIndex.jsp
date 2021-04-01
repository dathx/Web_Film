<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>Admin-Dathx movies</title>

<c:url var="url" value="/ADMIN/" />
<!-- Bootstrap CSS -->
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="${url}/css/uploadimage.css" rel="stylesheet">
<link href="${url}/css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="${url}/css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="${url}/css/elegant-icons-style.css" rel="stylesheet" />
<link href="${url}/css/font-awesome.min.css" rel="stylesheet" />
<!-- full calendar css-->
<link
	href="${url}/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css"
	rel="stylesheet" />
<link href="${url}/assets/fullcalendar/fullcalendar/fullcalendar.css"
	rel="stylesheet" />
<!-- easy pie chart-->
<link
	href="${url}/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
	rel="stylesheet" type="text/css" media="screen" />
<!-- owl carousel -->
<link href="${url}/css/owl.carousel.css" rel="stylesheet"
	type="text/css">
<link href="${url}/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
<!-- Custom styles -->
<link href="${url}/css/fullcalendar.css" rel="stylesheet">
<link href="${url}/css/widgets.css" rel="stylesheet">
<link href="${url}/css/style.css" rel="stylesheet">
<link href="${url}/css/style-responsive.css" rel="stylesheet" />
<link href="${url}/css/xcharts.min.css" rel=" stylesheet">
<link href="${url}/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
<!-- =======================================================
    Theme Name: NiceAdmin
    Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>

<body>
	<!-- container section start -->
	<%@include file="Functions/header.jsp"%>
	<!--header end-->

	<!--sidebar start-->
	<%@include file="Functions/aside.jsp"%>
	<!--sidebar end-->

	<!--Content  -->
	<jsp:include page="${view}"></jsp:include>
	<!--Content-->
	<!-- container section start -->

	<!-- javascripts -->
	<script src="${url}/js/jquery.js"></script>
	<script src="${url}/js/jquery-ui-1.10.4.min.js"></script>
	<script src="${url}/js/jquery-1.8.3.min.js"></script>
	<script src="${url}/js/jquery-ui-1.9.2.custom.min.js"
		type="text/javascript"></script>
	<!-- bootstrap -->
	<script src="${url}/js/bootstrap.min.js"></script>
	<!-- nice scroll -->
	<script src="${url}/js/jquery.scrollTo.min.js"></script>
	<script src="${url}/js/jquery.nicescroll.js" type="text/javascript"></script>
	<!-- charts scripts -->
	<script src="${url}/assets/jquery-knob/js/jquery.knob.js"></script>
	<script src="${url}/js/jquery.sparkline.js" type="text/javascript"></script>
	<script
		src="${url}/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
	<script src="${url}/js/owl.carousel.js"></script>
	<!-- jQuery full calendar -->
	<
	<script src="${url}/js/fullcalendar.min.js"></script>
	<!-- Full Google Calendar - Calendar -->
	<script src="${url}/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
	<!--script for this page only-->
	<script src="${url}/js/calendar-custom.js"></script>
	<script src="${url}/js/jquery.rateit.min.js"></script>
	<!-- custom select -->
	<script src="${url}/js/jquery.customSelect.min.js"></script>
	<script src="${url}/assets/chart-master/Chart.js"></script>

	<!--custome script for all page-->
	<script src="${url}/js/scripts.js"></script>
	<!-- custom script for this page-->
	<script src="${url}/js/sparkline-chart.js"></script>
	<script src="${url}/js/easy-pie-chart.js"></script>
	<script src="${url}/js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="${url}/js/jquery-jvectormap-world-mill-en.js"></script>
	<script src="${url}/js/xcharts.min.js"></script>
	<script src="${url}/js/jquery.autosize.min.js"></script>
	<script src="${url}/js/jquery.placeholder.min.js"></script>
	<script src="${url}/js/gdp-data.js"></script>
	<script src="${url}/js/morris.min.js"></script>
	<script src="${url}/js/sparklines.js"></script>
	<script src="${url}/js/charts.js"></script>
	<script src="${url}/js/jquery.slimscroll.min.js"></script>
	<script src="${url}js/uploadimage.js"></script>
	<script>
      //knob
      $(function() {
        $(".knob").knob({
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      /* ---------- Map ---------- */
      $(function() {
        $('#map').vectorMap({
          map: 'world_mill_en',
          series: {
            regions: [{
              values: gdpData,
              scale: ['#000', '#000'],
              normalizeFunction: 'polynomial'
            }]
          },
          backgroundColor: '#eef3f7',
          onLabelShow: function(e, el, code) {
            el.jsp(el.jsp() + ' (GDP - ' + gdpData[code] + ')');
          }
        });
      });
    </script>

</body>

</html>
