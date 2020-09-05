# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit java-pkg-2 java-pkg-simple maven-repo

DESCRIPTION="Plexus Common Utilities"
HOMEPAGE="https://codehaus-plexus.github.io/plexus-utils/"
SRC_URI="https://repo1.maven.org/maven2/org/codehaus/plexus/plexus-utils/3.2.1/plexus-utils-3.2.1-sources.jar"

LICENSE="Apache-2.0"

SLOT="3.2.1"
KEYWORDS="amd64"

MAVEN_GROUP_ID="org.codehaus.plexus"
MAVEN_ARTIFACT_ID="plexus-utils"
MAVEN_VERSION="3.2.1"

RDEPEND=">=virtual/jre-1.7"
BDEPEND=">=virtual/jdk-1.7"

src_install() {
	java-pkg-simple_src_install
	registerMavenArtifact plexus-utils.jar ${MAVEN_GROUP_ID} ${MAVEN_ARTIFACT_ID} ${MAVEN_VERSION} jar
}
