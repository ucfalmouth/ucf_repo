; Include Build Kit distro makefile via URL
; includes[] = http://drupalcode.org/project/buildkit.git/blob_plain/refs/heads/7.x-2.x:/distro.make

; Include Panopoly make file
includes[] = http://drupalcode.org/project/panopoly.git/blob_plain/refs/heads/7.x-1.x:/drupal-org.make

; Get the all the other makes etc for ucf_repo
projects[myprofile][type] = profile
projects[myprofile][download][type] = git
projects[myprofile][download][url] = git://github.com/ucfalmouth/ucf_repo.git