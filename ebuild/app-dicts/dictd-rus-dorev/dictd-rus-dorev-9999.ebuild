DESCRIPTION="Old russian dictionary (1914)"
HOMEPAGE="http://www.dorev.ru/ru-index.html"
SRC_URI="file:///home/ksa242/projects/personal/lang/rus-dorev/${PN}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
IUSE=""

DEPEND=">=app-text/dictd-1.5.5"

S=${WORKDIR}

src_install() {
	insinto /usr/lib/dict
	doins rus-dorev.dict.dz rus-dorev.index || die
}
