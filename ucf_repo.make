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
projects[views_oai_pmh][subdir] = contrib

; Themes ======================================================================

projects[basic][subdir] = contrib

; Features ====================================================================

projects[ucf_repo_features][subdir] = contrib
projects[ucf_repo_features][download][type] = git
projects[ucf_repo_features][download][url] = git@github.com:ucfalmouth/ucf_repo_features.git