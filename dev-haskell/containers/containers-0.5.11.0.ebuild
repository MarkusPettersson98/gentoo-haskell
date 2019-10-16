# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Assorted concrete container types"
HOMEPAGE="http://hackage.haskell.org/package/containers"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.6.1:=
"

DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"

src_prepare() {
	default

	cabal_chdeps \
		'base >= 4.3 && < 5' 'base >= 4.3'
		'array >= 0.4.0.0'
		'deepseq >= 1.2 && < 1.5' 'deepseq >= 1.2'
		'ghcprim >= 0.5.3'
}

src_configure() {
    haskell-cabal_src_configure
}


