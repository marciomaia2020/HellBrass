<?php
/*------------------------------------------------------------------------
# Joomla 2.5 Template - Blue Design
# ------------------------------------------------------------------------
# Author    Thecoders.vn
# Copyright Copyright (C) 2012 Thecoders.vn. All Rights Reserved.
# License - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
# Websites: http://thecoders.vn
# Live Demo: http://gatheme.com
# Technical Support:  Forum - http://laptrinhvien-vn.com
-------------------------------------------------------------------------*/

// No direct access.
defined('_JEXEC') or die;

include_once JPATH_ROOT . "/templates/" . $this->template . '/libs/groups.php';
include_once JPATH_ROOT . "/templates/" . $this->template . '/libs/class.php';
include_once JPATH_ROOT . "/templates/" . $this->template . '/libs/variables.php';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>">
<head>
<jdoc:include type="head" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<?php
    $document = JFactory::getDocument();
    $document->addStyleSheet(JURI::base() . 'templates/system/css/system.css');
    $document->addStyleSheet(JURI::base() . 'templates/system/css/general.css');
    $document->addStyleSheet(JURI::base() . 'templates/' . $this->template . '/css/default.css');
    $document->addStyleSheet(JURI::base() . 'templates/' . $this->template . '/css/template' . $direction . '.css');
    $document->addStyleSheet(JURI::base() . 'templates/' . $this->template . '/css/modules' . $direction . '.css');
	
	$document->addStyleSheet(JURI::base() . 'templates/' . $this->template . '/css/bootstrap' . $direction . '.css');
	$document->addStyleSheet(JURI::base() . 'templates/' . $this->template . '/css/bootstrap-responsive' . $direction . '.css');
	
	if($customcss) {
    	$document->addStyleSheet(JURI::base() . 'templates/' . $this->template . '/css/custom.css');
	}
	
	$document->addScript(JURI::base() . '/templates/' . $this->template . '/js/jquery-1.8.0.min.js');
	$document->addScript(JURI::base() . '/templates/' . $this->template . '/js/bootstrap' . $direction . '.js');
?>
<script type="text/javascript">jQuery.noConflict();</script>
</head>
<body id="bd" class="<?php echo ($menu->getActive() == $menu->getDefault()) ? "home " : ""; ?> <?php echo ($classSfx != '') ? $classSfx : ""; ?>clearfix">
	<div id="tcvn-wrapper">
    	<!-- Header Block -->
        <div id="tcvn-header">
    		<div class="<?php echo $container; ?>">
            	<div class="<?php echo $row; ?>">
                    <!-- Logo block -->
                    <div id="tcvn-logo" class="span3">
                        <?php if($logo): ?>
                            <a href="<?php echo JURI::base(); ?>">
                                <img src="<?php echo $this->baseurl ?>/<?php echo htmlspecialchars($logo); ?>" alt="<?php echo htmlspecialchars($siteTitle);?>" />
                            </a>
                        <?php elseif($siteTitle) : ?>
                            <a href="<?php echo JURI::base(); ?>">
                                <span class="site-title"><?php echo htmlspecialchars($siteTitle);?></span>
                                <span class="site-description"><?php echo htmlspecialchars($siteDescription);?></span> 
                            </a>
                        <?php else : ?>	
                            <a href="<?php echo JURI::base(); ?>">
                                <img alt="<?php echo $siteTitle; ?>" src="<?php echo JURI::base() . 'templates/' . $this->template; ?>/images/logo.png" />
                            </a>
                        <?php endif;?>
                    </div>
                    <!-- Menu Block -->
                    <div id="tcvn-top-menu" class="span9">
                    	<?php if ($this->countModules('top-menu')): ?>
                        <div class="navbar">
                            <div class="tcvn-navbar-inner">
                                <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="brand" href="#">Menu</a>
                            	<div class="nav-collapse collapse">
                            		<jdoc:include type="modules" name="top-menu" style="none" />
                            	</div>
                            </div>
                        </div>
                        <?php endif; ?>
                    </div>
            	</div>
            </div>
        </div>
        
        <!-- Slideshow Block -->
        <?php if ($this->countModules('slideshow')): ?>
        <div id="tcvn-slideshow">
        	<div class="box-shadow"></div>
            <div class="<?php echo $container; ?>">
            	<div class="tcvn-wrapper-inner">
            		<jdoc:include type="modules" name="slideshow" style="none" />
            	</div>
            </div>
        </div>
        <?php endif; ?>
        
        <!-- Breadcrumbs Block -->
        <?php if ($this->countModules('breadcrumbs')): ?>
        <div id="tcvn-breadcrumbs">
        	<div class="box-shadow"></div>
            <div class="<?php echo $container; ?>">
            	<div class="tcvn-wrapper-inner">
            		<jdoc:include type="modules" name="breadcrumbs" style="none" />
            	</div>
            </div>
        </div>
        <?php endif; ?>
        
        <!-- Promotion Block -->
        <?php if ($this->countModules('promotion')): ?>
        <div id="tcvn-promotion">
            <div class="<?php echo $container; ?>">
            	<div class="tcvn-wrapper-inner">
            		<jdoc:include type="modules" name="promotion" style="xhtml" />
            	</div>
            </div>
        </div>
        <?php endif; ?>
        
        <!-- Position 1, 2, 3 Block -->
        <?php if($this->countModules('position-1 or position-2 or position-3')) : ?>
        <div id="tcvn-position-123">
        	<div class="<?php echo $container; ?>">
            	<div class="<?php echo $row; ?>">
                	<!-- Position 1 Block -->
					<?php if ($this->countModules('position-1')): ?>
                	<div id="position-1" class="<?php echo $position13; ?>">
            			<jdoc:include type="modules" name="position-1" style="xhtml" />
                    </div>
                    <?php endif; ?>
                    <!-- Position 2 Block -->
					<?php if ($this->countModules('position-2')): ?>
                    <div id="position-2" class="<?php echo $position13; ?>">
            			<jdoc:include type="modules" name="position-2" style="xhtml" />
                    </div>
                    <?php endif; ?>
                    <!-- Position 3 Block -->
					<?php if ($this->countModules('position-3')): ?>
                    <div id="position-3" class="<?php echo $position13; ?>">
            			<jdoc:include type="modules" name="position-3" style="xhtml" />
                    </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
        <?php endif; ?>
        
        <!-- Position 4 Block -->
        <?php if ($this->countModules('position-4')): ?>
        <div id="tcvn-position-4">
        	<div class="<?php echo $container; ?>">
            	<jdoc:include type="modules" name="position-4" style="xstyle" />
            </div>
        </div>
        <?php endif; ?>
        
        <!--Content + Left + Right Block -->
        <div id="tcvn-container">
        	<div class="<?php echo $container; ?>">
            	<jdoc:include type="message" />
                <div id="tcvn-main" class="<?php echo $row; ?>">
                	<!-- Left Block -->
					<?php if($this->countModules('left')) : ?>
                    <div id="tcvn-left" class="span<?php echo $columnWidth; ?>">
                        <jdoc:include type="modules" name="left" style="zstyle" />
                    </div>
                    <?php endif; ?>
                    <!-- Component Block -->
                    <div id="tcvn-content" class="<?php echo $mainbody; ?>">
                    	<jdoc:include type="component" />
                    </div>
                    <!-- Right Block -->
                    <?php if($this->countModules('right')) : ?>
                    <div id="tcvn-right" class="span<?php echo $columnWidth; ?>">
                        <jdoc:include type="modules" name="right" style="zstyle" />
                    </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
        
        <!-- Position 5, 6 Block -->
        <?php if($this->countModules('position-5 or position-6')) : ?>
        <div id="tcvn-position-56">
        	<div class="<?php echo $container; ?>">
            	<div class="<?php echo $row; ?>">
                	<!-- Position 5 Block -->
                    <?php if ($this->countModules('position-5')): ?>
                	<div id="tcvn-position-5" class="<?php echo $position56; ?>">
                    	<jdoc:include type="modules" name="position-5" style="xstyle" />
                    </div>
                    <?php endif; ?>
                    <!-- Position 6 Block -->
                    <?php if ($this->countModules('position-6')): ?>
                	<div id="tcvn-position-6" class="<?php echo $position56; ?>">
                    	<jdoc:include type="modules" name="position-6" style="xstyle" />
                    </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
        <?php endif; ?>
        
        <!-- Position 7, 8, 9 Block -->
        <?php if($this->countModules('position-7 or position-8 or position-9')) : ?>
        <div id="tcvn-position-789">
        	<div class="<?php echo $container; ?>">
            	<div class="<?php echo $row; ?>">
                    <div class="tcvn-wrapper-inner">
                        <!-- Position 7 Block -->
                        <?php if ($this->countModules('position-7')): ?>
                        <div id="tcvn-position-7" class="<?php echo $position79; ?>">
                            <jdoc:include type="modules" name="position-7" style="zstyle" />
                        </div>
                        <?php endif; ?>
                        <!-- Position 6 Block -->
                        <?php if ($this->countModules('position-8')): ?>
                        <div id="tcvn-position-8" class="<?php echo $position79; ?>">
                            <jdoc:include type="modules" name="position-8" style="zstyle" />
                        </div>
                        <?php endif; ?>
                        <!-- Position 6 Block -->
                        <?php if ($this->countModules('position-9')): ?>
                        <div id="tcvn-position-9" class="<?php echo $position79; ?>">
                            <jdoc:include type="modules" name="position-9" style="zstyle" />
                        </div>
                        <?php endif; ?>
                	</div>
                </div>
            </div>
        </div>
        <?php endif; ?>
        
        <!-- Footer Block -->
        <div id="tcvn-footer">
        	<div class="<?php echo $container; ?>">
            	<div class="<?php echo $row; ?>">
                	<div class="tcvn-wrapper-inner">
                        <!-- Position 10 Block -->
                        <div id="tcvn-position-10" class="span8">
                            <?php if ($this->countModules('position-10')): ?>
                            <jdoc:include type="modules" name="position-10" style="none" />
                            <?php endif; ?>
                        </div>
                        
                        <!-- Copyright Block -->
                        <div id="tcvn-copyright" class="span4">
                            <?php echo $this->params->get('copyright') ?>
                        </div>
                	</div>
                </div>
            </div>
        </div>
    </div>
<jdoc:include type="modules" name="debug" />
</body>
</html>