#!/usr/bin/env bash

set -euo pipefail
which edl

export file=$(realpath $0)
export dir=$(dirname $file)
cd $dir/images

edl qfil rawprogram0.xml patch0.xml .
edl qfil rawprogram1.xml patch1.xml .
edl qfil rawprogram2.xml patch2.xml .
edl qfil rawprogram3.xml patch3.xml .
edl qfil rawprogram4.xml patch4.xml .
edl qfil rawprogram5.xml patch5.xml .
