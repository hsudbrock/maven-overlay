# Copyright 2020-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: maven-base.eclass
# @MAINTAINER:
# gentoo@hsudbrock.de
# @AUTHOR:
# Henning Sudbrock (gentoo@hsudbrock.de)
# @BLURB: Base eclass for packaging Java software using maven.
# @DESCRIPTION:
# This eclass provides base functionality to build Java packages using maven.

# @ECLASS-VARIABLE: MAVEN_GROUP_ID
# @DEFAULT_UNSET
# @DESCRIPTION:
# The group ID of the maven artifact
#
# @CODE
#	MAVEN_GROUP_ID="org.apache"
# @CODE

# @ECLASS-VARIABLE: MAVEN_ARTIFACT_ID
# @DEFAULT_UNSET
# @DESCRIPTION:
# The artifact ID of the maven artifact
#
# @CODE
#	MAVEN_ARTIFACT_ID="apache"
# @CODE

# @ECLASS-VARIABLE: MAVEN_VERSION
# @DEFAULT_UNSET
# @DESCRIPTION:
# The version of the maven artifact
#
# @CODE
#	MAVEN_VERSION="2.6"
# @CODE

# @ECLASS-VARIABLE: MAVEN_CLASSIFIER
# @DEFAULT_UNSET
# @DESCRIPTION:
# The classifier of the maven artifact
#
# @CODE
#       MAVEN_CLASSIFIER="bin"
# @CODE

# @ECLASS-VARIABLE: GENTOO_MAVEN_REPOSITORY
# @DESCRIPTION:
# The location of the Gentoo Maven repository containing artifacts built using portage
: ${GENTOO_MAVEN_REPOSITORY:=/usr/share/gentoo-maven-repository}

# @ECLASS-VARIABLE: GENTOO_BIN_MAVEN_REPOSITORY
# @DESCRIPTION:
# The location of the Gentoo Maven repository containing binary artifacts not build using portage
: ${GENTOO_MAVEN_BIN_REPOSITORY:=/usr/share/gentoo-maven-bin-repository}

# @FUNCTION: registerMavenArtifact
# @USAGE: registerMavenArtifact <file> <groupId> <artifactId> <version> <packaging>
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
	shift 1
	local packaging="${1}"

	local targetFolder="${GENTOO_MAVEN_REPOSITORY}/${groupId//.//}/${artifactId}/${version}"
	local targetFileName="${artifactId}-${version}.${packaging}"

	# I would love to simply symlink from the local gentoo maven repository to the pom, but, unfortunately,
	# it appears that maven does not follow symlinks inside a local repository.
	echo "Copying ${file} for artifact ${groupId}:${artifactId}:${version} to ${targetFolder}/${targetFileName}"
	cp ${S}/${file} ${S}/${targetFileName}
	dodir ${targetFolder}
	insinto ${targetFolder}
	doins ${targetFileName}
}

# @FUNCTION: registerBinaryMavenArtifact
# @USAGE: registerBinaryMavenArtifact <file> <groupId> <artifactId> <version> <packaging> 
# @INTERNAL
# @DESCRIPTION:
# Links the provided file into the portage maven bin repository under the provided group ID,
# artifact ID, and version.
registerBinaryMavenArtifact() {
	# TODO: Avoid duplication of code in this method with the non-bin variant above
        local file="${1}"
        shift 1
        local groupId="${1}"
        shift 1
        local artifactId="${1}"
        shift 1
        local version="${1}"
        shift 1
        local packaging="${1}"

        local targetFolder="${GENTOO_MAVEN_BIN_REPOSITORY}/${groupId//.//}/${artifactId}/${version}"
        local targetFileName="${artifactId}-${version}.${packaging}"

        # I would love to simply symlink from the local gentoo maven repository to the pom, but, unfortunately,
        # it appears that maven does not follow symlinks inside a local repository.
        echo "Copying ${file} for artifact ${groupId}:${artifactId}:${version} to ${targetFolder}/${targetFileName}"
        cp ${S}/${file} ${S}/${targetFileName}
        dodir ${targetFolder}
        insinto ${targetFolder}
        doins ${targetFileName}
}

