# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit maven-pom

DESCRIPTION="The Maven Parent POM"
HOMEPAGE="https://maven.apache.org/"
SRC_URI="https://repo1.maven.org/maven2/org/apache/maven/maven-parent/34/maven-parent-34-source-release.zip"

LICENSE="Apache-2.0"

SLOT="34"
KEYWORDS="amd64"

S=${WORKDIR}/maven-parent-34

MAVEN_GROUP_ID="org.apache.maven"
MAVEN_ARTIFACT_ID="maven-parent"
MAVEN_VERSION="34"

BDEPEND="=dev-java/apache-pom-23"