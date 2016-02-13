# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Web Application Interface"
HOMEPAGE="https://github.com/yesodweb/wai"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/blaze-builder-0.2.1.4:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/bytestring-builder-0.10.4.0:=[profile?] <dev-haskell/bytestring-builder-0.10.7:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?]
	>=dev-haskell/network-2.2.1.5:=[profile?]
	>=dev-haskell/text-0.7:=[profile?]
	>=dev-haskell/transformers-0.0:=[profile?]
	>=dev-haskell/vault-0.3:=[profile?] <dev-haskell/vault-0.4:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( dev-haskell/hspec )
"
