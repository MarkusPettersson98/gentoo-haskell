# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile" # haddock hoogle hscolour" haddock fails as 'haddock: internal error: synifyKind'
inherit haskell-cabal

MY_PN="RepLib"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Generic programming library with representation types"
HOMEPAGE="http://code.google.com/p/replib/"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-2.0[profile?]
		<dev-haskell/mtl-2.2[profile?]
		>=dev-haskell/type-equality-0.1.0.2[profile?]
		<dev-haskell/type-equality-0.2[profile?]
		>=dev-lang/ghc-7.0.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10"

S="${WORKDIR}/${MY_P}"
