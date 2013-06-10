# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="TinyOS tools"
HOMEPAGE="http://www.tinyos.net/"
SRC_URI="https://github.com/tinyos/tinyos-main/archive/release_tinyos_2_1_2.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	>=dev-embedded/nesc-1.3.4"
S="${WORKDIR}/tinyos-main-release_tinyos_${PV//./_}/tools"
src_configure() {
	cd "${S}"
	./Bootstrap
	econf
}
