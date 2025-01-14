# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A generic interface for cryptographic operations"
HOMEPAGE="https://github.com/TomMD/crypto-api"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~x86"
IUSE="all-cpolys"

RDEPEND=">=dev-haskell/cereal-0.2:=[profile?]
	dev-haskell/entropy:=[profile?]
	>=dev-haskell/tagged-0.1:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag all-cpolys all_cpolys)
}
