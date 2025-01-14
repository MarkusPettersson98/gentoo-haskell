# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Types for representing a structured document"
HOMEPAGE="https://pandoc.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6.2:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/quickcheck-2.4:2=[profile?] <dev-haskell/quickcheck-2.14:2=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/syb-0.1:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7
		>=dev-haskell/string-qq-0.0.2
		>=dev-haskell/test-framework-0.3 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/test-framework-quickcheck2-0.2.9 <dev-haskell/test-framework-quickcheck2-0.4 )
"

src_prepare() {
	default

	cabal_chdeps \
		'string-qq == 0.0.2' 'string-qq >= 0.0.2'
}
