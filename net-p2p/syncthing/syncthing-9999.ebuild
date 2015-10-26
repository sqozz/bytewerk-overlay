EAPI=5
inherit eutils
inherit git-r3

DESCRIPTION="Open Source Continuous File Synchronization"
HOMEPAGE="https://syncthing.net/"

EGIT_REPO_URI="git://github.com/syncthing/syncthing.git"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm"
DEPEND=">=dev-lang/go-1.3"
RDEPEND="${DEPEND}"

src_prepare() {
	mkdir -p ${WORKDIR}/src/github.com/${PN}
	mv ${S} ${WORKDIR}/src/github.com/${PN}/${PN} 
	S=${WORKDIR}/src/github.com/${PN}/${PN}
	export GOPATH="${WORKDIR}"
	cd $S
}

src_compile() {
	go run build.go -no-upgrade
}

src_install() {
	mkdir ${D}bin/
	mv ${S}/bin/* ${D}bin/
}
