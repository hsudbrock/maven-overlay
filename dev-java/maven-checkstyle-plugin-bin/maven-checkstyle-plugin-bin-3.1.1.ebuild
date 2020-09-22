# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# This ebuild was generated using the java-ebuilder-maven-plugin.

EAPI=7

inherit maven-bin

DESCRIPTION="Binary for: Generates a report on violations of code style and optionally fai"
HOMEPAGE="https://maven.apache.org/plugins/maven-checkstyle-plugin/"
SRC_URI="https://repo1.maven.org/maven2/org/apache/maven/plugins/maven-checkstyle-plugin/3.1.1/maven-checkstyle-plugin-3.1.1.jar"

LICENSE="Apache-2.0"

SLOT="3.1.1"
KEYWORDS="amd64"

MAVEN_GROUP_ID="org.apache.maven.plugins"
MAVEN_ARTIFACT_ID="maven-checkstyle-plugin"
MAVEN_VERSION="3.1.1"

S="${WORKDIR}"

src_unpack() {
	cp "${DISTDIR}"/maven-checkstyle-plugin-3.1.1.jar "${S}"/maven-checkstyle-plugin-3.1.1.jar || die "Could not copy downloaded jar file from ${DISTDIR} to ${S}"
}
