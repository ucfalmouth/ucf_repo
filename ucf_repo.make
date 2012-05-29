api = 2
core = 7.x
projects[drupal][type] = core
projects[drupal][version] = 7.14
; patch for/from panopoly
projects[drupal][patch][985814] = http://drupal.org/files/drupal-actions-985814-11-D7.patch

; Include Build Kit install profile makefile via URL
; includes[] = http://drupalcode.org/project/buildkit.git/blob_plain/refs/heads/7.x-2.x:/distro.make

; Include Panopoly make file
includes[] = http://drupalcode.org/project/panopoly.git/blob_plain/refs/heads/7.x-1.x:/drupal-org.make

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
projects[node_export][subdir] = contrib
; projects[node_export][patch][installfix][url] = "http://dl.dropbox.com/u/21129417/build/ucf_repo/node_export.installprofile.patch"
projects[date][subdir] = contrib
projects[taxonomy_csv][subdir] = contrib

projects[boxes][subdir] = contrib
projects[views_boxes][subdir] = contrib
projects[entity_autocomplete][subdir] = contrib

projects[ds][subdir] = contrib
projects[eva][subdir] = contrib
projects[eva][version] = 1.x
projects[spaces][subdir] = contrib
projects[spaces][version] = 3.x-dev
projects[field_group][subdir] = contrib

; workflow ====================
projects[bundle_inherit][subdir] = contrib
; projects[bundle_inherit][patch][] = http://drupal.org/files/bundle_inherit-7.x-1580322-1.patch
; patch workbench to allow features exportables
projects[workbench_moderation][subdir] = contrib
projects[workbench_moderation][patch][] = http://drupal.org/files/workbench_moderation-featuresint-state-transition-1314508-22.patch
; projects[workflow][subdir] = contrib

projects[rules][subdir] = contrib
projects[views_bulk_operations][subdir] = contrib

; developer ====================
projects[module_filter][subdir] = contrib
projects[auto_nodetitle][subdir] = contrib
projects[features_orphans][subdir] = contrib
projects[ftools][subdir] = contrib
projects[features_plumber][subdir] = contrib

; fields =======================
projects[content_type_groups][subdir] = contrib
projects[content_type_groups][patch][] = http://drupal.org/files/content_type_groups-check_old_type-1470050-1.patch
projects[name][subdir] = contrib
projects[email][subdir] = contrib
projects[languagefield][subdir] = contrib
projects[ldap][subdir] = contrib
projects[schemaorg][subdir] = contrib

projects[nodereference_url][subdir] = contrib

; Themes ======================================================================

projects[basic][subdir] = contrib
projects[antonelli][subdir] = contrib
projects[apartik][type] = theme
projects[apartik][subdir] = custom
projects[apartik][download][type] = git
projects[apartik][download][url] = git@github.com:tombola/apartik.git


; Custom Modules ==============================================================

projects[research_views][type] = module
projects[research_views][subdir] = custom
projects[research_views][download][type] = git
projects[research_views][download][url] = git@github.com:ucfalmouth/research_views.git

projects[deposit_block][type] = module
projects[deposit_block][subdir] = custom
projects[deposit_block][download][type] = git
projects[deposit_block][download][url] = git@github.com:ucfalmouth/deposit_block.git


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