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
projects[drupal][version] = "7.12"

; Include Build Kit distro makefile via URL
; includes[] = http://drupalcode.org/project/buildkit.git/blob_plain/refs/heads/7.x-2.x:/distro.make

projects[ucf_repo][type] = profile
projects[ucf_repo][download][type] = git
projects[ucf_repo][download][url] = git@github.com:ucfalmouth/ucf_repo.git

projects[panopoly][type] = profile
projects[panopoly][download][type] = git
projects[panopoly][download][url] = http://git.drupal.org/project/panopoly.git
projects[panopoly][download][branch] = 7.x-1.x

projects[buildkit][type] = profile
projects[buildkit][download][type] = git
projects[buildkit][download][url] = http://drupalcode.org/project/buildkit
projects[buildkit][download][branch] = 7.x-2.x