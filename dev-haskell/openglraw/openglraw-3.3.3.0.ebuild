# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: -usenativewindowslibraries,-useglxgetprocaddress,-osandroid,-usegles2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="OpenGLRaw"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A raw binding for the OpenGL graphics system"
HOMEPAGE="http://www.haskell.org/haskellwiki/Opengl"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/fixed-0.2:=[profile?] <dev-haskell/fixed-0.4:=[profile?]
	>=dev-haskell/half-0.2.2.1:=[profile?] <dev-haskell/half-0.4:=[profile?]
	>=dev-haskell/text-0.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	virtual/opengl
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-osandroid \
		--flag=-usegles2 \
		--flag=-useglxgetprocaddress \
		--flag=-usenativewindowslibraries
}
