# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: +noupperbounds

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="HaskellNet-SSL"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Helpers to connect to SSL/TLS mail servers with HaskellNet"
HOMEPAGE="https://github.com/dpwright/HaskellNet-SSL"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/connection-0.2.7:=[profile?]
	dev-haskell/data-default:=[profile?]
	>=dev-haskell/haskellnet-0.3:=[profile?]
	>=dev-haskell/network-2.4:=[profile?]
	>=dev-haskell/tls-1.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		--flag=noupperbounds
}
