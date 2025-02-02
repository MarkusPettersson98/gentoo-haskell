# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="HGamer3D"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Toolset for the Haskell Game Programmer"
HOMEPAGE="http://www.hgamer3d.org"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/binary-serialise-cbor:=[profile?]
	dev-haskell/cereal:=[profile?]
	dev-haskell/clock:=[profile?]
	dev-haskell/fresco-binding:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/vect:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	default

	cabal_chdeps \
		'base >= 4.9 && < 4.10' 'base >= 4.9'
}
