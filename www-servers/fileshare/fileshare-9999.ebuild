EAPI=5

inherit git-r3

DESCRIPTION="A small HTTP Server for quickly sharing files over the network."
HOMEPAGE="http://git.tkolb.de/fileshare/"

EGIT_REPO_URI="git://git.tkolb.de/fileshare.git"

LICENSE="PIZZAWARE"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="net-libs/libmicrohttpd[messages]"
RDEPEND="${DEPEND}"

src_compile() {
	make BUILD=release
}

src_install() {
	dobin bin/release/fileshare
}
