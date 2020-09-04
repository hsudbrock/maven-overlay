# Copyright 2020-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: maven-repo.eclass
# @MAINTAINER:
# gentoo@hsudbrock.de
# @AUTHOR:
# Henning Sudbrock (gentoo@hsudbrock.de)
# @BLURB: Link artifacts into the portage maven repository
# @DESCRIPTION:
# This eclass provides functionality to link artifacts into the portage maven repository

# @ECLASS-VARIABLE: GENTOO_MAVEN_REPOSITORY
# @DESCRIPTION:
# The location of the Gentoo Maven repository
: ${GENTOO_MAVEN_REPOSITORY:=/usr/share/gentoo-maven-repository}

# @FUNCTION: registerMavenArtifact
# @USAGE: registerMavenArtifact <file> <groupId> <artifactId> <version>
# @INTERNAL
# @DESCRIPTION:
# Links the provided file into the portage maven repository under the provided group ID,
# artifact ID, and version.
registerMavenArtifact() {
	local file="${1}"
	shift 1
	local groupId="${1}"
	shift 1
	local artifactId="${1}"
	shift 1
	local version="${1}"

	local targetFolder="${GENTOO_MAVEN_REPOSITORY}/${groupId//.//}/${artifactId}/${version}"
	local targetFileName="${artifactId}-${version}.pom"

	# I would love to simply symlink from the local gentoo maven repository to the pom, but, unfortunately,
	# it appears that maven does not follow symlinks inside a local repository.
	echo "Copying ${file} for artifact ${groupId}:${artifactId}:${version} to ${targetFolder}/${targetFileName}"
	cp ${S}/pom.xml ${S}/${targetFileName}
	dodir ${targetFolder}
	insinto ${targetFolder}
	doins ${targetFileName}
}
