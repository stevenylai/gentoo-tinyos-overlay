# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Nesc for TinyOS"
HOMEPAGE="http://sourceforge.net/projects/nescc"
SRC_URI="mirror://sourceforge/${PN}c/${P}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=virtual/jdk-1.5"
RDEPEND="${DEPEND}
	>=virtual/jre-1.5"
