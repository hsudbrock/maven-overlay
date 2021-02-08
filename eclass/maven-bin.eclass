# Copyright 2015-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: maven-bin.eclass
# @MAINTAINER:
# gentoo@hsudbrock.de
# @AUTHOR:
# Henning Sudbrock (gentoo@hsudbrock.de)
# @BLURB: Eclass for packaging Maven Binary Jar files used by other ebuilds to build Java packages using maven.
# @DESCRIPTION:
# This class is intended to package Maven Binary Jar files.

inherit maven-utils

EXPORT_FUNCTIONS src_unpack src_install

# @FUNCTION: maven-bin_src_unpack
# @DESCRIPTION:
# src_unpack for bare maven binary files. Simply copies the downloaded jar file to the work dir.
maven-bin_src_unpack() {
	cp "${DISTDIR}"/${MAVEN_ARTIFACT_ID}-${MAVEN_VERSION}.jar "${S}"/ || die "Could not copy downloaded jar file from ${DISTDIR} to ${S}"
	cp "${DISTDIR}"/${MAVEN_ARTIFACT_ID}-${MAVEN_VERSION}.pom "${S}"/ || die "Could not copy downloaded pom file from ${DISTDIR} to ${S}"
}

# @FUNCTION: maven-bin_src_install
# @DESCRIPTION:
# src_install for bare maven binary files. Installs the binary file and links it into the offline maven repository for binary files.
maven-bin_src_install() {
	local jarFilename=${MAVEN_ARTIFACT_ID}-${MAVEN_VERSION}.jar
	local pomFilename=${MAVEN_ARTIFACT_ID}-${MAVEN_VERSION}.pom
	local destfolder=/opt/${PN}-${SLOT}/lib

	dodir ${destfolder}
	insinto ${destfolder}
	doins ${jarFilename}
	doins ${pomFilename}

	registerBinaryMavenArtifact ${destfolder}/${jarFilename} ${MAVEN_GROUP_ID} ${MAVEN_ARTIFACT_ID} ${MAVEN_VERSION} jar
	registerBinaryMavenArtifact ${destfolder}/${pomFilename} ${MAVEN_GROUP_ID} ${MAVEN_ARTIFACT_ID} ${MAVEN_VERSION} pom
}
