# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2

SLOT="0"

PTXDIST_GIT="git://git.pengutronix.de/git/ptxdist.git"

DESCRIPTION="ptxdist is a build system mainly for embedded systems"

EGIT_REPO_URI="${PTXDIST_GIT}"

LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND=""

src_prepare() {
	sed -i "s/printf '%s' -dirty/printf ''/g" scripts/kernel/setlocalversion
}

src_configure() {
	./autogen.sh
	econf --prefix=${INSTALL_DIR} --docdir=${INSTALL_DIR}/share/doc/ --infodir=${INSTALL_DIR}/share/info
}

src_install() {
	emake DESTDIR="${D}" install || die "Install failed"
	rm ${D}/bin/ptxdist || die "Failed removing"
}
