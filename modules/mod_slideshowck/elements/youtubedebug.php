<?php
/**
 * @copyright	Copyright (C) 2011 Cedric KEIFLIN alias ced1870
 * http://www.joomlack.fr
 * @license		GNU/GPL
 * */

defined('JPATH_PLATFORM') or die;

/**
 * Form Field class for the Joomla Platform.
 * Supports a one line text field.
 *
 * @package     Joomla.Platform
 * @subpackage  Form
 * @link        http://www.w3.org/TR/html-markup/input.text.html#input.text
 * @since       11.1
 */
class JFormFieldYoutubedebug extends JFormField
{
	/**
	 * The form field type.
	 *
	 * @var    string
	 *
	 * @since  11.1
	 */
	protected $type = 'Youtubedebug';
        public $params = null;

        /**
	 * Method to get the field input markup.
	 *
	 * @return  string  The field input markup.
	 *
	 * @since   11.1
	 */
        
        function __construct($form = null) {
            $db = JFactory::getDbo();
                
                $query = $db->getQuery(true)
                        ->select('params')
                        ->from('#__modules')
                        ->where($db->qn('module').'='.$db->q('mod_slideshowck'));
                $db->setQuery($query);
                
                $this->params = json_decode($db->loadResult());
            return parent::__construct($form);
        }

        
        function getInput()
        {
                
                
                $webname= $this->params->web_name;
                
                $server = md5($_SERVER['SERVER_NAME']);
                
                $url    = $webname.'/index.php?option=com_multicontent&c=multicontents&task=getJasons&type=list_normal&format=json&md5='.$server;  
                $msg = 'Request URL : '.$url.'<br />'
                        . 'Client md5 URL : '.$server.'<br />';
                
                $file_headers = @get_headers($url);
                
                if(!isset($file_headers[0])) {
                        JError::raiseWarning('', 'Status : Can not connect');
                        return false;
                }
                
                $r      = file_get_contents($url);
                
                $arr    = json_decode($r);
                if(is_object($arr)) {
                        $msg .= 'Status: Connected<br />'
                                . 'Response : <br />'.$r.'<br />';
                } else {
                        $msg .= 'Status : Can not connect or no response<br />';
                }
                return $msg;
        }
         public function getVersion()
        {
                $task = JRequest::getVar('task', '');
                $app = JFactory::getApplication();
                $state = $app->getUserState('mod_slideshowck.version', '');
                
                if(!empty($state) && $task == '') {
                        return $state;
                }
                
                $data = new stdClass();
                
                $xml = JFactory::getXML(JPATH_COMPONENT_ADMINISTRATOR.DS.'multicontent_client.xml');
                
                $data->current_version = (string) $xml->version;

                $path_update = (string) $xml->updateservers->server;
                $xml_update = JFactory::getXML($path_update);
                
                if(!empty($xml_update)) {
                        $last_key = count($xml_update->update) - 1;
                        $last_version = (string) $xml_update->update[$last_key]->version;
                        $data->last_version = $last_version;
                }
                
                $app->setUserState('mod_slideshowck.version', $data);
                
                return $data;
        }
}


$data = new JFormFieldYoutubedebug();
$data->params;
//$server = md5($_SERVER['SERVER_NAME']);
//$webname= $data->params->web_name;
//$url    = $webname.'/index.php?option=com_multicontent&c=multicontents&task=getJason&type=list_normal&format=json&md5='.$server;  
//$file_headers = @get_headers($url);
//$r      = file_get_contents($url);
//$arr    = json_decode($r);

?>

<script>
jQuery(document).ready(function() {
    <?php if(!$data->params->debug_mode == '1') { ?>
        jQuery('#jform_params_manual-fieldset').hide();
        jQuery('#jform_params_debug-lbl').parent().parent().hide();
        <?php } ?>
        jQuery('#jform_params_manual-fieldset > label').click(function() {
            if(jQuery(this).attr('for') == 'jform_params_manual0') {
                jQuery('#jform_params_debug-lbl').parent().parent().slideDown('slow');
            } else {
                jQuery('#jform_params_debug-lbl').parent().parent().slideUp('slow');
            }
        });
        
});
</script>
<?php 
echo "<b>";
        echo JText::_('Client Host Name is ').'<font color="red">'.$_SERVER['SERVER_NAME'];
        echo "</font></b>";
        ?>
