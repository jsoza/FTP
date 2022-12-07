#!/bin/bash
sudo /usr/bin/s3fs production-dupont-ftp -o use_cache=/tmp -o allow_other -o multireq_max=5 /production-dupont-ftp
