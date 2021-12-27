<?php
/*------------------------------------------------------------------------
# Joomla 2.5 Template - Groups
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

/* Group module positions */
# Count position from 1 to 3

$position13 = 'span';
$sumModules = 0;

for($i = 1; $i <= 3; $i++) {
	if($this->countModules('position-' . $i) > 0) $sumModules += 1;
}

$position13 .= ($sumModules != 0) ? 12/$sumModules : 12;


# Count position from 5 to 6
$position56 = 'span';
$sumModules  = 0;

for($i = 5; $i <= 6; $i++) {
	if($this->countModules('position-' . $i) > 0) $sumModules += 1;
}

$position56 .= ($sumModules != 0) ? 12/$sumModules : 12;


# Count position from 7 to 9
$position79 = 'span';
$sumModules  = 0;

for($i = 7; $i <= 9; $i++) {
	if($this->countModules('position-' . $i) > 0) $sumModules += 1;
}

$position79 .= ($sumModules != 0) ? 12/$sumModules : 12;
