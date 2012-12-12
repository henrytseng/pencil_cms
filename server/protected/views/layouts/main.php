<?php /* @var $this Controller */ ?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--[if lte IE 9]><link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" type="text/css" media="screen" /><![endif]-->

	<link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/css/layout.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/css/styles.css" type="text/css" media="screen" />
	
	<!--css3-mediaqueries-js - http://code.google.com/p/css3-mediaqueries-js/ - Enables media queries in some unsupported browsers-->
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/css3-mediaqueries.js"></script>
</head>
<body>
<header>
	<div class="logo">
		<h1><?php echo $this->pageTitle; ?></h1>
	</div>
	<?php $this->widget('zii.widgets.CMenu',array(
		'items'=>array(
			array('label'=>'Home', 'url'=>array('site/index')),
			array('label'=>'Login', 'url'=>array('site/login'), 'visible'=>Yii::app()->user->isGuest),
			array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('site/logout'), 'visible'=>!Yii::app()->user->isGuest)
		),
	)); ?>
</header>

<div id="content">
	<?php echo $content; ?>
</div>

<footer>
	Copyright &copy; 2013 Canvas Digital LLC.  All rights reserved.   
</footer>
</body>
</html>
