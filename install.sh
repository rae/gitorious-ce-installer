#!/bin/bash

set -e

source functions.sh

log "Starting Gitorious installation..."

require_root
install_docker
pull_latest_images
start_containers
install_gitorious_services
start_gitorious_services
anonymous_pingback

log ""
log "Your installation of Gitorious Community Edition is complete."
log "This installer is created and supported by Gitorious AS."
log "For professional, long-term support, please consider Gitorious Enterprise Edition."
log "http://gitorious.com"
