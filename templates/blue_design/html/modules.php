<?php
/*------------------------------------------------------------------------
# Joomla 2.5 Template - Modules.php
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

function modChrome_xstyle($module, &$params, &$attribs)
{
	$headerLevel = isset($attribs['headerLevel']) ? (int) $attribs['headerLevel'] : 3;
	if(!empty ($module->content)) : ?>
		<div class="moduletable <?php echo htmlspecialchars($params->get('moduleclass_sfx')); ?>">
			<?php if ($module->showtitle != 0) : ?>
				<?php echo '<h' .$headerLevel .'>' .$module->title .'</h' .$headerLevel .'>'; ?>		
        		<div class="modhdg1 lines"><div class="modhdg2 lines"></div></div>
			<?php endif; ?>
			<?php echo $module->content; ?>
		</div>
	<?php endif;
}
function modChrome_zstyle($module, &$params, &$attribs)
{
	$headerLevel = isset($attribs['headerLevel']) ? (int) $attribs['headerLevel'] : 3;
	if(!empty ($module->content)) : ?>
		<div class="moduletable <?php echo htmlspecialchars($params->get('moduleclass_sfx')); ?>">
			<?php if ($module->showtitle != 0) : ?>
				<?php echo '<h' .$headerLevel .'>' .$module->title .'</h' .$headerLevel .'>'; ?>		
        		<div class="modhdg1 line"><div class="modhdg2 line"></div></div>
			<?php endif; ?>
			<?php echo $module->content; ?>
		</div>
	<?php endif;
}