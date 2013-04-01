# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2

HIDAPI_GIT="https://github.com/signal11/hidapi.git"

DESCRIPTION="hidapi libraries for usb HID development"
HOMEPAGE="https://github.com/signal11/hidapi"
#SRC_URI="${HIDAPI_GIT}"

EGIT_REPO_URI="${HIDAPI_GIT}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="!testgui"

DEPEND="sys-devel/automake"
RDEPEND=""

src_configure() {
	./bootstrap
	econf $(use_enable testgui)
}

src_install() {
	emake DESTDIR="${D}" install
}
