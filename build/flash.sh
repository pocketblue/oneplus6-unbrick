#!/usr/bin/env bash

set -euo pipefail
which edl

edl qfil rawprogram0.xml patch0.xml images
edl qfil rawprogram1.xml patch1.xml images
edl qfil rawprogram2.xml patch2.xml images
edl qfil rawprogram3.xml patch3.xml images
edl qfil rawprogram4.xml patch4.xml images
edl qfil rawprogram5.xml patch5.xml images
