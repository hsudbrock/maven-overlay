# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# This ebuild was generated using the java-ebuilder-maven-plugin.

EAPI=7

inherit maven-pom

DESCRIPTION="POM for: The Apache Software Foundation provides support for the Apache communi"
HOMEPAGE="https://www.apache.org/"
SRC_URI="https://repo1.maven.org/maven2/org/apache/apache/23/apache-23.pom"

LICENSE="Apache-2.0"

SLOT="23"
KEYWORDS="amd64"

MAVEN_GROUP_ID="org.apache"
MAVEN_ARTIFACT_ID="apache"
MAVEN_VERSION="23"


S="${WORKDIR}"

src_unpack() {
  cp "${DISTDIR}"/apache-23.pom "${S}"/pom.xml || die "Could not copy downloaded pom file from ${DISTDIR} to ${S}"
}
