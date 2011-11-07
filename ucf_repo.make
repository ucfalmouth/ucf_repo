api = 2
core = 7.x

; Include Build Kit install profile makefile via URL
includes[] = http://drupalcode.org/project/buildkit.git/blob_plain/refs/heads/7.x-2.x:/drupal-org.make

; Modules =====================================================================

projects[admin_menu][subdir] = contrib
projects[views_oai_pmh][subdir] = contrib

; Themes ======================================================================

projects[basic][subdir] = contrib