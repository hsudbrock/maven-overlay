# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# This ebuild was generated using the java-ebuilder-maven-plugin.

EAPI=7

inherit maven-bin

DESCRIPTION="Maven Compiler Plugin"
HOMEPAGE="https://maven.apache.org/plugins/maven-compiler-plugin/"
SRC_URI="https://repo1.maven.org/maven2/org/apache/maven/plugins/maven-compiler-plugin/3.1/maven-compiler-plugin-3.1.jar
         https://repo1.maven.org/maven2/org/apache/maven/plugins/maven-compiler-plugin/3.1/maven-compiler-plugin-3.1.pom"

LICENSE="Apache-2.0"

SLOT="3.1"
KEYWORDS="amd64"

MAVEN_GROUP_ID="org.apache.maven.plugins"
MAVEN_ARTIFACT_ID="maven-compiler-plugin"
MAVEN_VERSION="3.1"

S="${WORKDIR}"
