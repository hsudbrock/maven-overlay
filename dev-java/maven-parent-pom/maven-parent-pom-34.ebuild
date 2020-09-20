# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# This ebuild was generated using the java-ebuilder-maven-plugin.

EAPI=7

inherit maven-pom

DESCRIPTION="The project object model (POM) for: Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information."
HOMEPAGE="https://maven.apache.org/"
SRC_URI="https://repo1.maven.org/maven2/org/apache/maven/maven-parent/34/maven-parent-34.pom"

LICENSE="Apache-2.0"

SLOT="34"
KEYWORDS="amd64"

MAVEN_GROUP_ID="org.apache.maven"
MAVEN_ARTIFACT_ID="maven-parent"
MAVEN_VERSION="34"

BDEPEND="=dev-java/apache-pom-23"

S="${WORKDIR}"

src_unpack() {
  cp "${DISTDIR}"/maven-parent-34.pom "${S}"/pom.xml || die "Could not copy downloaded pom file from ${DISTDIR} to ${S}"
}
