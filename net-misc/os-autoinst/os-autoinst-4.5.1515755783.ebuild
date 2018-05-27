# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
inherit git-r3

DESCRIPTION="OS-level test automation"
HOMEPAGE="https://open.qa/"
EGIT_REPO_URI="https://github.com/os-autoinst/os-autoinst.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="
	>=media-libs/opencv-2.4.13-r3
	>=dev-perl/IPC-System-Simple-1.250.0
	>=dev-perl/Exception-Class-1.390.0
	>=dev-perl/Net-SSH2-0.580.0-r1
	>=dev-perl/Crypt-DES-2.70.0
"

src_prepare() {
	git checkout master
	eapply_user
	autoreconf -f -i
}

src_configure() {
	econf
}

src_install() {
	emake DESTDIR="${D}" install
}
