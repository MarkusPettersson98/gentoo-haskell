# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generic types and functions for columnar encoding and decoding"
HOMEPAGE="https://github.com/andrewthad/colonnade#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # ambiguous package: AC-Vector-Fancy-2.4.0 vector-0.11.0.0

RDEPEND=">=dev-haskell/contravariant-1.2:=[profile?] <dev-haskell/contravariant-1.6:=[profile?]
	>=dev-haskell/profunctors-5.0:=[profile?] <dev-haskell/profunctors-5.4:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/doctest )
"