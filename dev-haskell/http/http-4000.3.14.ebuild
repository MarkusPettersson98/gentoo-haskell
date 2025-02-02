# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: -warp-tests,-mtl1,-warn-as-error,-old-base,-network23

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="HTTP"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A library for client-side HTTP"
HOMEPAGE="https://github.com/haskell/HTTP"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="conduit10 +network-uri"

RDEPEND=">=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/parsec-2.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	network-uri? ( >=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-3.2:=[profile?]
			>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?] )
	!network-uri? ( >=dev-haskell/network-2.4:=[profile?] <dev-haskell/network-2.6:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/httpd-shed-0.4 <dev-haskell/httpd-shed-0.5
		>=dev-haskell/hunit-1.2.0.1 <dev-haskell/hunit-1.7
		>=dev-haskell/puremd5-0.2.4 <dev-haskell/puremd5-2.2
		>=dev-haskell/split-0.1.3 <dev-haskell/split-0.3
		>=dev-haskell/test-framework-0.2.0 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.3.0 <dev-haskell/test-framework-hunit-0.4 )
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag conduit10 conduit10) \
		--flag=-mtl1 \
		$(cabal_flag network-uri network-uri) \
		--flag=-network23 \
		--flag=-old-base \
		--flag=-warn-as-error \
		--flag=-warp-tests
}
