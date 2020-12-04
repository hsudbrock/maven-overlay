# Copyright 2020-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: maven-bin.eclass
# @MAINTAINER:
# gentoo@hsudbrock.de
# @AUTHOR:
# Henning Sudbrock (gentoo@hsudbrock.de)
# @BLURB: Eclass for packaging Maven Binary Jar files used by other ebuilds to build Java packages using maven.
# @DESCRIPTION:
# This class is intended to package Maven Binary Jar files.

inherit maven-base

EXPORT_FUNCTIONS src_unpack src_install

# @FUNCTION: maven-bin_src_unpack
# @DESCRIPTION:
# src_unpack for bare maven binary files. Simply copies the downloaded jar file to the work dir.
maven-bin_src_unpack() {
	cp "${DISTDIR}"/${MAVEN_ARTIFACT_ID}-${MAVEN_VERSION}.jar "${S}"/ || die "Could not copy downloaded jar file from ${DISTDIR} to ${S}"
}

# @FUNCTION: maven-bin_src_install
# @DESCRIPTION:
# src_install for bare maven binary files. Installs the binary file and links it into the offline maven repository for binary files.
maven-bin_src_install() {
	dodir /opt/${PN}-${SLOT}/lib
	insinto /opt/${PN}-${SLOT}/lib

	FILENAME=${MAVEN_ARTIFACT_ID}-${MAVEN_VERSION}.jar
	doins ${FILENAME}
	registerBinaryMavenArtifact /opt/${PN}-${SLOT}/lib/${FILENAME} ${MAVEN_GROUP_ID} ${MAVEN_ARTIFACT_ID} ${MAVEN_VERSION} jar
}
