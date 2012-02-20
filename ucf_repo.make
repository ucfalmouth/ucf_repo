api = 2
core = 7.x

; Include Build Kit install profile makefile via URL
includes[] = http://drupalcode.org/project/buildkit.git/blob_plain/refs/heads/7.x-2.x:/drupal-org.make

;--------------------
; Build Kit overrides
;--------------------

projects[tao][subdir] = contrib
projects[rubik][subdir] = contrib

; Modules =====================================================================

projects[admin_menu][subdir] = contrib
projects[backup_migrate][subdir] = contrib
projects[views_oai_pmh][subdir] = contrib
projects[references][subdir] = contrib
projects[entity][subdir] = contrib
projects[profile2][subdir] = contrib
projects[uuid][subdir] = contrib
projects[node_export][subdir] = contrib
projects[node_export][patch][installfix][url] = "http://dl.dropbox.com/u/21129417/build/ucf_repo/node_export.installprofile.patch"
projects[date][subdir] = contrib

projects[boxes][subdir] = contrib
projects[views_boxes][subdir] = contrib
projects[entity_autocomplete][subdir] = contrib

projects[ds][subdir] = contrib
projects[eva][subdir] = contrib
projects[spaces][subdir] = contrib
projects[field_group][subdir] = contrib

; projects[workbench][subdir] = contrib
projects[workflow][subdir] = contrib
projects[rules][subdir] = contrib
projects[views_bulk_operations][subdir] = contrib
projects[module_filter][subdir] = contrib
projects[auto_nodetitle][subdir] = contrib
projects[features_orphans][subdir] = contrib
projects[ftools][subdir] = contrib
projects[features_plumber][subdir] = contrib

; fields
projects[content_type_groups][subdir] = contrib
projects[name][subdir] = contrib
projects[email][subdir] = contrib
projects[languagefield][subdir] = contrib

projects[ldap][subdir] = contrib
projects[schemaorg][subdir] = contrib

; Themes ======================================================================

projects[basic][subdir] = contrib
projects[antonelli][subdir] = contrib
projects[apartik][type] = theme
projects[apartik][subdir] = custom
projects[apartik][download][type] = git
projects[apartik][download][url] = git@github.com:tombola/apartik.git


; Custom Modules ====================================================================

projects[research_views][type] = module
projects[research_views][subdir] = custom
projects[research_views][download][type] = git
projects[research_views][download][url] = git@github.com:ucfalmouth/researcher_views.git

; Features ====================================================================

projects[ucf_repo_features][type] = module
projects[ucf_repo_features][subdir] = custom
projects[ucf_repo_features][download][type] = git
projects[ucf_repo_features][download][url] = git@github.com:ucfalmouth/ucf_repo_features.git