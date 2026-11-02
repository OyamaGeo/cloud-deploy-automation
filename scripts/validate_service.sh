#!/bin/bash
set -e

systemctl is-active --quiet nginx
curl -f http://localhost/