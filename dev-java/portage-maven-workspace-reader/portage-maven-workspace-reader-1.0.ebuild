# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

EGIT_REPO_URI="https://github.com/hsudbrock/portage-maven-workspace-reader.git"
JAVA_GENTOO_CLASSPATH="javax-inject"
JAVA_SRC_DIR="src/main/java"

inherit git-r3 java-pkg-2 java-pkg-simple

DESCRIPTION="A maven extension providing a WorkspaceReader that finds portage-built maven artifacts during a maven build"
HOMEPAGE="https://github.com/hsudbrock/portage-maven-workspace-reader"

LICENSE="MIT"

SLOT="0"

KEYWORDS="~amd64"

S="${WORKDIR}/${P}"

CDEPEND="dev-java/javax-inject:0"

RDEPEND=">=virtual/jre-1.8
		${CDEPEND}"

DEPEND=">=virtual/jdk-1.8
		${CDEPEND}"
