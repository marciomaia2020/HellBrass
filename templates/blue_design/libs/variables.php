<?php
/*------------------------------------------------------------------------
# Joomla 2.5 Template - Global Variables
# ------------------------------------------------------------------------
# Author    Thecoders.vn
# Copyright Copyright (C) 2012 Thecoders.vn. All Rights Reserved.
# License - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
# Websites: http://thecoders.vn
# Live Demo: http://gatheme.com
# Technical Support:  Forum - http://laptrinhvien-vn.com
-------------------------------------------------------------------------*/

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

$app  		= JFactory::getApplication();
$menu 		= $app->getMenu();
$active 	= $menu->getActive();
$params 	= $menu->getParams($active->id);
$classSfx 	= $params->get('pageclass_sfx');

// Get params
/*===========================================================================================*/

$logo               = $this->params->get('logo');
$siteTitle          = $this->params->get('siteTitle');
$siteDescription    = $this->params->get('siteDescription');
$customcss	        = $this->params->get('customcss');
$container			= $this->params->get('templateWidth');
$row 				= ($container) ? 'row-fluid' : 'row';
$container 			= ($container) ? 'container-fluid' : 'container';
$columnWidth		= $this->params->get('columnWidth');

$mainbody = '';
if($this->countModules('left') && $this->countModules('right'))  $mainbody = 'span' . (12 - 2*$columnWidth);
elseif ($this->countModules('left') || $this->countModules('right')) $mainbody = 'span' . (12 - $columnWidth);
else $mainbody = 'span12';

// Common +
/*===========================================================================================*/
$tcvn = new TCVNCommon($this->template, $this->params);
$tcvn->setDirection();
$direction = $tcvn->getDirection();
