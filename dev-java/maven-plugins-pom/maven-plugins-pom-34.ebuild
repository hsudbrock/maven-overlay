# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit maven-pom

DESCRIPTION="The Maven Plugins POM"
HOMEPAGE="https://maven.apache.org/"
SRC_URI="https://repo1.maven.org/maven2/org/apache/maven/plugins/maven-plugins/34/maven-plugins-34.pom"

LICENSE="Apache-2.0"

SLOT="34"
KEYWORDS="amd64"

MAVEN_GROUP_ID="org.apache.maven.plugins"
MAVEN_ARTIFACT_ID="maven-plugins"
MAVEN_VERSION="34"

BDEPEND="=dev-java/maven-parent-pom-34"

S="${WORKDIR}"

src_unpack() {
  echo ${S}
  cp "${DISTDIR}"/maven-plugins-34.pom "${S}"/pom.xml || die
}