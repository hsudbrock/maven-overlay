# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit maven-pom

DESCRIPTION="The Apache Parent POM"
HOMEPAGE="https://www.apache.org/"
SRC_URI="https://repo1.maven.org/maven2/org/apache/apache/21/apache-21-source-release.zip"

LICENSE="Apache-2.0"

SLOT="21"
KEYWORDS="amd64"

S=${WORKDIR}/apache-21

MAVEN_GROUP_ID="org.apache"
MAVEN_ARTIFACT_ID="apache"
MAVEN_VERSION="21"
