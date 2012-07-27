xapi = 2
core = 7.x
projects[drupal][type] = core
projects[drupal][version] = 7.14

includes[] = http://drupalcode.org/project/buildkit.git/blob_plain/refs/heads/7.x-2.x:/drupal-org.make

;--------------------
; Build Kit overlap
;--------------------

projects[tao][subdir] = contrib
projects[rubik][subdir] = contrib
projects[diff][subdir] = contrib


; Modules =====================================================================

projects[admin_menu][subdir] = contrib
projects[backup_migrate][subdir] = contrib
projects[views_oai_pmh][subdir] = contrib
projects[views_oai_pmh][version] = 1.x
projects[rdfx][subdir] = contrib
projects[references][subdir] = contrib
projects[entity][subdir] = contrib
projects[profile2][subdir] = contrib
projects[uuid][subdir] = contrib
projects[date][subdir] = contrib
projects[taxonomy_csv][subdir] = contrib

projects[boxes][subdir] = contrib
projects[views_boxes][subdir] = contrib
projects[entity_autocomplete][subdir] = contrib

projects[ds][subdir] = contrib
projects[eva][subdir] = contrib
projects[eva][version] = 1.x
projects[context][subdir] = contrib
projects[spaces][subdir] = contrib
projects[spaces][version] = 3.x-dev
projects[field_group][subdir] = contrib
; projects[field_collection][subdir] = contrib
projects[entityreference][subdir] = contrib
projects[entityreference][patch][] = http://drupal.org/files/explicity_include_module.1459540.patch
projects[defaultcontent][subdir] = contrib

; workflow ====================
; patch workbench to allow features exportables
projects[workbench_moderation][subdir] = contrib
projects[workbench_moderation][patch][] = http://drupal.org/files/workbench_moderation-featuresint-state-transition-1314508-22.patch
projects[rules][subdir] = contrib
projects[views_bulk_operations][subdir] = contrib
projects[total_control][subdir] = contrib
projects[flag][subdir] = contrib

; developer ====================
projects[module_filter][subdir] = contrib
projects[auto_nodetitle][subdir] = contrib
projects[features_orphans][subdir] = contrib
projects[ftools][subdir] = contrib
projects[features_plumber][subdir] = contrib

; fields =======================
projects[content_type_groups][subdir] = contrib
projects[name][subdir] = contrib
projects[email][subdir] = contrib
projects[languagefield][subdir] = contrib
projects[ldap][subdir] = contrib
projects[schemaorg][subdir] = contrib

projects[node_convert][subdir] = contrib

; Theming ======================================================================

projects[basic][subdir] = contrib
projects[antonelli][subdir] = contrib
projects[apartik][type] = theme
projects[apartik][subdir] = custom
projects[apartik][download][type] = git
projects[apartik][download][url] = git@github.com:tombola/apartik.git

projects[fences][subdir] = contrib

; Custom Modules ==============================================================

projects[research_views][type] = module
projects[research_views][subdir] = custom
projects[research_views][download][type] = git
projects[research_views][download][url] = git@github.com:ucfalmouth/research_views.git

projects[deposit_block][type] = module
projects[deposit_block][subdir] = custom
projects[deposit_block][download][type] = git
projects[deposit_block][download][url] = git@github.com:ucfalmouth/deposit_block.git

projects[deposit_wizard][type] = module
projects[deposit_wizard][subdir] = custom
projects[deposit_wizard][download][type] = git
projects[deposit_wizard][download][url] = git@github.com:ucfalmouth/deposit_wizard.git


; Features ====================================================================

projects[ucf_repo_features][type] = module
projects[ucf_repo_features][subdir] = custom
projects[ucf_repo_features][download][type] = git
projects[ucf_repo_features][download][url] = git@github.com:ucfalmouth/ucf_repo_features.git

; UCF private ====================================================================

projects[ucf_authenticate][type] = module
projects[ucf_authenticate][subdir] = custom
projects[ucf_authenticate][download][type] = git
projects[ucf_authenticate][download][url] = git@github.com:ucfalmouth/ucf_authenticate.git