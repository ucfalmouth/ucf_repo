<?php

/**
 * Implements hook_form_FORM_ID_alter().
 * Allows the profile to alter the site configuration form.
 */
function ucf_repo_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = t('Repository');
}

/**
 * Implements hook_install_tasks().
 */
function ucf_repo_install_tasks ($install_state) {
	$tasks['ucf_repo_research_environment_form'] = array(
	  'display_name' => st('Research Environment'),
	  'display' => TRUE,
	  'type' => 'form',
	);
	return $tasks;
}

function ucf_repo_research_environment_form ($form_state) {
	$form['description'] = array(
	'#type' => 'item',
	'#title' => t('Form to choose whether or not to setup repository according to falmouth institutional structure')
	);
	$form['ucf_institution'] = array(
	'#type' => 'checkbox', 
	'#title' => t('UCF Research Environment'), 
	'#description' => 'Setup according to Falmouth research environment'
	);
	$form['submit'] = array('#type' => 'submit', '#value' => t('submit'));
	$form['#submit'][] = 'ucf_repo_research_environment_form_submit';
  return $form;
}

function ucf_repo_research_environment_form_submit ($form, $form_state) {
	if ($form['ucf_institution']['#value']) {
		module_enable(
			array(
			'uuid',
			'node_export',
			'ucf_research_groups',
			'ucf_institution',
			)
		);
		watchdog('ucf_repo', 'ucf research environment selected');
	}
}

?>