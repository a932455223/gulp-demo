<!DOCTYPE html>
<html lang="en" class="mb">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible">
  <title>{% block title %}My Site{% endblock %}</title>

	<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" />
	<script src="../js/common/rem.js"></script>
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="format-detection" content="telephone=no"/>
	{% block css %}
	<link rel="stylesheet" href="../css/yepcss-h5.css">
	<link rel="stylesheet" href="../css/style-hg38.css">
	<link rel="stylesheet" href="../css/animate.css">
	{% endblock %}
  
</head>

<body>
  {% block content %}{% endblock %}
</body>

{% block js %}
<script type='text/javascript' src='../js/lib/zepto.js' charset='utf-8'></script>
<script type='text/javascript' src='../js/common/ui.common.js' charset='utf-8'></script>
<script type="text/javascript" src='../js/common/ui.loading.js' charset='utf-8'></script>

{% endblock %}
</html>