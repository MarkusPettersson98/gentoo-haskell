# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: +doctests

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Semigroupoids: Category sans id"
HOMEPAGE="https://github.com/ekmett/semigroupoids"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+comonad +containers +contravariant +distributive +tagged +unordered-containers"

RESTRICT=test # broken on USE=doc

RDEPEND=">=dev-haskell/base-orphans-0.8:=[profile?] <dev-haskell/base-orphans-1:=[profile?]
	>=dev-haskell/bifunctors-5:=[profile?] <dev-haskell/bifunctors-6:=[profile?]
	>=dev-haskell/semigroups-0.16.2:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/transformers-compat-0.5:=[profile?] <dev-haskell/transformers-compat-0.7:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	comonad? ( >=dev-haskell/comonad-4.2.6:=[profile?] <dev-haskell/comonad-6:=[profile?] )
	contravariant? ( >=dev-haskell/contravariant-0.2.0.1:=[profile?] <dev-haskell/contravariant-2:=[profile?] )
	distributive? ( >=dev-haskell/distributive-0.2.2:=[profile?] <dev-haskell/distributive-1:=[profile?] )
	tagged? ( >=dev-haskell/tagged-0.8.5:=[profile?] <dev-haskell/tagged-1:=[profile?] )
	unordered-containers? ( >=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
				>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	>=dev-haskell/cabal-doctest-1 <dev-haskell/cabal-doctest-1.1
	test? ( >=dev-haskell/doctest-0.11.1 <dev-haskell/doctest-0.17 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag comonad comonad) \
		$(cabal_flag containers containers) \
		$(cabal_flag contravariant contravariant) \
		$(cabal_flag distributive distributive) \
		--flag=doctests \
		$(cabal_flag tagged tagged) \
		$(cabal_flag unordered-containers unordered-containers)
}
