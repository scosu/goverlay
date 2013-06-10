# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2

MICROCOM_GIT="git://git.pengutronix.de/git/tools/microcom.git"

DESCRIPTION="lightweight com term"

EGIT_REPO_URI="${MICROCOM_GIT}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND=""

src_install() {
	dobin microcom
}
