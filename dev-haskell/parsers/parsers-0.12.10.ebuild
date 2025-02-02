# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Parsing combinators"
HOMEPAGE="https://github.com/ekmett/parsers/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+attoparsec +parsec"

RDEPEND=">=dev-haskell/base-orphans-0.3:=[profile?] <dev-haskell/base-orphans-1:=[profile?]
	>=dev-haskell/charset-0.3:=[profile?] <dev-haskell/charset-1:=[profile?]
	>=dev-haskell/mtl-2.0.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/semigroups-0.12:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/text-0.10:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	attoparsec? ( >=dev-haskell/attoparsec-0.12.1.4:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?] )
	parsec? ( >=dev-haskell/parsec-3.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/quickcheck
		dev-haskell/quickcheck-instances )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag attoparsec attoparsec) \
		$(cabal_flag parsec parsec)
}
