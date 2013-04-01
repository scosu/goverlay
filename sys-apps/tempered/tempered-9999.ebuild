# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit cmake-utils git-2

DESCRIPTION="Displays temperature and humidity for USB HID TEMPerHUM sensors"
HOMEPAGE=""
EGIT_REPO_URI="https://github.com/edorfaus/TEMPered.git"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-util/cmake"
RDEPEND="dev-libs/hidapi"


