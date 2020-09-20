# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit java-pkg-2 java-pkg-simple maven-repo

DESCRIPTION="Maven Artifact classes"
HOMEPAGE="https://maven.apache.org/ref/2.2.1/maven-artifact/"
SRC_URI="https://repo1.maven.org/maven2/org/apache/maven/maven-artifact/2.2.1/maven-artifact-2.2.1-sources.jar"

LICENSE="Apache-2.0"

SLOT="2.2.1"
KEYWORDS="amd64"

MAVEN_GROUP_ID="org.apache.maven"
MAVEN_ARTIFACT_ID="maven-artifact"
MAVEN_VERSION="2.2.1"

RDEPEND=">=virtual/jre-1.7"
BDEPEND=">=virtual/jdk-1.7"

JAVA_GENTOO_CLASSPATH="plexus-utils-3.2.1"

src_install() {
	java-pkg-simple_src_install
	registerMavenArtifact maven-artifact.jar ${MAVEN_GROUP_ID} ${MAVEN_ARTIFACT_ID} ${MAVEN_VERSION} jar
}
