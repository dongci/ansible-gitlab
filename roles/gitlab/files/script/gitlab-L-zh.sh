#!/bin/bash
yes|cp -rf /tmp/gitlab-L-zh/* /opt/gitlab/embedded/service/gitlab-rails/
sleep 3
echo 'This is OK' >/dev/null
exit 0
