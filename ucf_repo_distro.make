api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = "7.12"

; Include Build Kit distro makefile via URL
includes[] = http://drupalcode.org/project/buildkit.git/blob_plain/refs/heads/7.x-2.x:/distro.make

projects[ucf_repo][type] = profile
projects[ucf_repo][download][type] = git
projects[ucf_repo][download][url] = git@github.com:ucfalmouth/ucf_repo.git
; projects[ucf_repo][download][branch] = 7.x-1.x

