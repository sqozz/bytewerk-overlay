EAPI=5
inherit versionator
inherit font

DESCRIPTION="The free and healthy typeface for bread and butter use"
HOMEPAGE="http://vollkorn-typeface.com/"

MY_PV=$(replace_all_version_separators '-')
SRC_URI="http://vollkorn-typeface.com/download/vollkorn-${MY_PV}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="-*"
IUSE=""

S="${WORKDIR}"
FONT_S="${S}/TTF"
FONT_SUFFIX="ttf"
DOCS="Fontlog.txt"

DEPEND="app-arch/unzip"
RDEPEND=""

# Only installs fonts
RESTRICT="strip binchecks"

