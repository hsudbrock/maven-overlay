# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

JAVA_SRC_DIR="src/main/java"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The API of the Maven artifact resolver"
HOMEPAGE="https://maven.apache.org/resolver/maven-resolver-api"
SRC_URI="https://github.com/apache/maven-resolver/archive/maven-resolver-${PV}.tar.gz"

LICENSE="Apache-2.0"

SLOT="0"

KEYWORDS="~amd64"

S="${WORKDIR}/maven-resolver-maven-resolver-${PV}/maven-resolver-api"

RDEPEND=">=virtual/jre-1.8"

DEPEND=">=virtual/jdk-1.8"
