# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qmake-utils

DESCRIPTION="Graphical user interface of app-emulation/firejail"
HOMEPAGE="https://l3net.wordpress.com/projects/firejail"
SRC_URI="https://github.com/netblue30/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
DEPEND="
	|| (
		sys-apps/firejail
		sys-apps/firejail-lts
	)
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtsvg:5
	x11-terms/xterm
"
RDEPEND="${DEPEND}"

src_configure() {
	econf --with-qmake="$(qt5_get_bindir)"/qmake
}
