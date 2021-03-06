<?php

/**
 * Implements hook_form_FORM_ID_alter().
 * Allows the profile to alter the site configuration form.
 */
function ucf_repo_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = t('Research Repository');
	$form['server_settings']['site_default_country']['#default_value'] = 'UK';
	$form['server_settings']['date_default_timezone']['#default_value'] = 'Europe/London'; // West coast, best coast
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
	$form['dev_mode'] = array(
	'#type' => 'checkbox', 
	'#title' => t('Development mode'), 
	'#description' => 'Setup with development modules and features enabled'
	);
	$form['uk_region'] = array(
	'#type' => 'checkbox', 
	'#title' => t('UK regional settings'), 
	'#description' => 'Setup with UK style date formats etc'
	);
	$form['help_resources'] = array(
	'#type' => 'checkbox', 
	'#title' => t('Provide help resopurces for repository use'), 
	'#default_value' => 1,
	'#description' => 'Setup with UK style date formats etc'
	);
	$form['submit'] = array('#type' => 'submit', '#value' => t('submit'));
	$form['#submit'][] = 'ucf_repo_research_environment_form_submit';
  return $form;
}

function ucf_repo_research_environment_form_submit ($form, $form_state) {
	// allow access to content for anonymous and authenticated 
	// (http://drupal.org/node/656312#comment-6356304)
	user_role_change_permissions(1, array('access content' => TRUE));
	user_role_change_permissions(2, array('access content' => TRUE));

	if ($form['ucf_institution']['#value']) {
		module_enable(
			array(
			'ucf_research_groups',
			'ucf_institution',
			)
		);
		watchdog('ucf_repo', 'ucf research environment selected');
	}

	if ($form['dev_mode']['#value']) {
		module_enable(
			array(
			'devel',
			'devel_generate',
			'dev_tweaks',
			'module_filter',
			'ftools',
			'admin_menu',
			'contextual',
			'taxonomy_csv',
			'coffee',
			)
		);	
		watchdog('ucf_repo', 'dev mode selected');
	}
	if ($form['uk_region']['#value']) {
		 variable_set('date_format_long', 'l, F j, Y - H:i');
		 variable_set('date_format_medium', 'D, d/m/Y - H:i');
		 variable_set('date_format_short', 'd/m/Y - H:i');
	}
	if ($form['help_resources']['#value']) {
		module_enable(
			array(
			'advanced_help',
			'helpful',
			'helpful_hide',
			)
		);	
		watchdog('ucf_repo', 'dev mode selected');
	}
}

?>