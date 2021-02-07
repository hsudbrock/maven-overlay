# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# This ebuild was generated using the java-ebuilder-maven-plugin.

EAPI=7

inherit maven-bin

DESCRIPTION="Plugin used to retrieve JARs of resources from remote repositories, process those resources, and incorporate them into JARs you build with Maven."
HOMEPAGE="https://maven.apache.org/plugins/maven-remote-resources-plugin/"
SRC_URI="https://repo1.maven.org/maven2/org/apache/maven/plugins/maven-remote-resources-plugin/1.7.0/maven-remote-resources-plugin-1.7.0.jar"

LICENSE="Apache-2.0"

SLOT="1.7.0"
KEYWORDS="amd64"

MAVEN_GROUP_ID="org.apache.maven.plugins"
MAVEN_ARTIFACT_ID="maven-remote-resources-plugin"
MAVEN_VERSION="1.7.0"

S="${WORKDIR}"
