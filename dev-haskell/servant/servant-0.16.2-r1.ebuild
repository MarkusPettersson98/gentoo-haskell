# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A family of combinators for defining webservices APIs"
HOMEPAGE="http://docs.servant.dev/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-1.4.1.0:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/attoparsec-0.13.2.2:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/base-compat-0.10.5:=[profile?]
	>=dev-haskell/bifunctors-5.5.3:=[profile?] <dev-haskell/bifunctors-5.6:=[profile?]
	>=dev-haskell/case-insensitive-1.2.0.11:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/http-api-data-0.4.1:=[profile?] <dev-haskell/http-api-data-0.4.2:=[profile?]
	>=dev-haskell/http-media-0.7.1.3:=[profile?] <dev-haskell/http-media-0.9:=[profile?]
	>=dev-haskell/http-types-0.12.2:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/mmorph-1.1.2:=[profile?] <dev-haskell/mmorph-1.2:=[profile?]
	>=dev-haskell/mtl-2.2.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/network-uri-2.6.1.0:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/quickcheck-2.12.6.1:2=[profile?] <dev-haskell/quickcheck-2.14:2=[profile?]
	>=dev-haskell/singleton-bool-0.1.5:=[profile?] <dev-haskell/singleton-bool-0.1.6:=[profile?]
	>=dev-haskell/string-conversions-0.4.0.1:=[profile?] <dev-haskell/string-conversions-0.5:=[profile?]
	>=dev-haskell/tagged-0.8.6:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/vault-0.3.1.2:=[profile?] <dev-haskell/vault-0.4:=[profile?]
	>=dev-lang/ghc-8.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.2.0
	>=dev-haskell/cabal-doctest-1.0.6 <dev-haskell/cabal-doctest-1.1
	test? ( >=dev-haskell/doctest-0.16.0 <dev-haskell/doctest-0.17
		>=dev-haskell/hspec-2.6.0 <dev-haskell/hspec-2.8
		>=dev-haskell/quickcheck-instances-0.3.19 <dev-haskell/quickcheck-instances-0.4 )
"

src_prepare() {
	default

	cabal_chdeps \
		'base                   >= 4.9      && < 4.13' 'base                   >= 4.9' \
		'base-compat            >= 0.10.5   && < 0.11' 'base-compat            >= 0.10.5'
}
