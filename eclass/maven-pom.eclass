# Copyright 2020-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: maven-pom.eclass
# @MAINTAINER:
# gentoo@hsudbrock.de
# @AUTHOR:
# Henning Sudbrock (gentoo@hsudbrock.de)
# @BLURB: Eclass for packaging Maven POMs used by other ebuilds to build Java packages using maven.
# @DESCRIPTION:
# This class is intended to package Maven POMs.

inherit maven-base

EXPORT_FUNCTIONS src_unpack src_install

# @FUNCTION: maven-pom_src_unpack
# @DESCRIPTION:
# src_unpack for bare maven pom files. Simply copies the downloaded pom file to the work directory
maven-pom_src_unpack() {
	cp "${DISTDIR}"/${MAVEN_ARTIFACT_ID}-${MAVEN_VERSION}.pom "${S}"/ || die "Could not copy downloaded pom file from ${DISTDIR} to ${S}"
}

# @FUNCTION: maven-pom_src_install
# @DESCRIPTION:
# src_install for bare maven pom files. Installs the pom file and links it into the offline maven repository.
maven-pom_src_install() {
	dodir /usr/share/${PN}-${SLOT}
	insinto /usr/share/${PN}-${SLOT}

	FILENAME=${MAVEN_ARTIFACT_ID}-${MAVEN_VERSION}.pom 
	doins ${FILENAME}
	registerMavenArtifact ${FILENAME} ${MAVEN_GROUP_ID} ${MAVEN_ARTIFACT_ID} ${MAVEN_VERSION} pom
}
