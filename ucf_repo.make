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


; Themes ======================================================================

projects[basic][subdir] = contrib

; Features ====================================================================

projects[ucf_repo_features][type] = module
projects[ucf_repo_features][subdir] = contrib
projects[ucf_repo_features][download][type] = git
projects[ucf_repo_features][download][url] = git@github.com:ucfalmouth/ucf_repo_features.git