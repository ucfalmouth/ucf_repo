; This file describes the core project requirements for BuildKit 7.x. Several
; patches against Drupal core and their associated issue numbers have been
; included here for reference.
;
; Use this file to build a full distro including Drupal core (with patches) and
; the BuildKit install profile using the following command:
;
;     $ drush make distro.make [directory]

api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = "7.8"

projects[buildkit][type] = profile
projects[buildkit][download][type] = git
projects[buildkit][download][url] = http://git.drupal.org/project/buildkit.git
projects[buildkit][download][branch] = 7.x-2.x

projects[buildkit][type] = profile
projects[buildkit][download][type] = git
projects[buildkit][download][url] = git@github.com:tombola/ucf_repo.git
projects[buildkit][download][branch] = profile