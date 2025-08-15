#!/usr/bin/env bash

set -uexo pipefail

curl -LO https://archive.org/download/onepluscommunityserver/list/Unbrick_Tools/OnePlus_6/Q/OnePlus_6_OxygenOS_10.3.8.zip
7z x OnePlus_6_OxygenOS_10.3.8.zip
git clone https://github.com/bkerler/oppo_decrypt
python -m pip install -r oppo_decrypt/requirements.txt
python oppo_decrypt/opscrypto.py decrypt enchilada_22_J.50_210121/enchilada_22_J.50_210121.ops
mv enchilada_22_J.50_210121/extract images
env --chdir=images python ../build/patch.py
install -Dm 0755 build/flash.sh flash.sh
7z a -mx9 oneplus6_stock.7z flash.sh images
