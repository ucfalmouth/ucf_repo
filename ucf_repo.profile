<?php
/**
 * Implements hook_install_tasks().
 */
function ucf_repo_install_tasks ($install_state) {
	$task['machine_name'] = array(
	  'display_name' => st('Institution specific setup'),
	  'display' => TRUE,
	  'type' => 'form',
	  'run' => INSTALL_TASK_RUN_IF_REACHED,
	  'function' => 'ucf_repo_institutional_info_form',
	);
}

function ucf_repo_institutional_info_form ($form_state) {
	$form['description'] = array(
		'#type' => 'item',
		'#title' => t('Form to choose whether or not to setup repository according to falmouth institutional structure')
	)
	$form['ucf_institution'] = array(
    '#type' => 'checkbox', 
    '#title' => t('UCF Research Environment'), 
	'#description' => 'Setup according to Falmouth research environment'
  );
  return $form;
}

function ucf_repo_institutional_info_form_submit ($form, $form_state) {
	module_enable(
		array(
		'institutional_structure',
		'ucf_research_groups',
		'deposit_workflow',
		'ucf_institution',
		)
	)
}

?>