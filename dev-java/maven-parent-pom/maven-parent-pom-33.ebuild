# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# This ebuild was generated using the java-ebuilder-maven-plugin.

EAPI=7

inherit maven-pom

DESCRIPTION="The Maven Parent POM"
HOMEPAGE="https://maven.apache.org/"
SRC_URI="https://repo1.maven.org/maven2/org/apache/maven/maven-parent/33/maven-parent-33.pom"

LICENSE="Apache-2.0"

SLOT="33"
KEYWORDS="amd64"

MAVEN_GROUP_ID="org.apache.maven"
MAVEN_ARTIFACT_ID="maven-parent"
MAVEN_VERSION="33"

BDEPEND="~dev-java/apache-pom-21"

S="${WORKDIR}"
