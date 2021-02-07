# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: maven-utils.eclass
# @MAINTAINER:
# gentoo@hsudbrock.de
# @AUTHOR:
# Henning Sudbrock (gentoo@hsudbrock.de)
# @BLURB: Provides .
# @DESCRIPTION:
# This eclass provides functionality for maven-based ebuilds, including the defintion of emvn.

# TODO: Add non-bin variant in the future
BDEPEND="dev-java/maven-bin"

# @FUNCTION: emvn
# @USAGE: <mvn_arguments>
# @DESCRIPTION:
# Mvn wrapper function. Will use the appropriate maven version, and ensures that dependencies
# are not downloaded (but rather taken from the defined dependencies with maven artifacts).
emvn() {
	ebegin "Running mvn"

	eend "Finished running mvn"
}



# @FUNCTION: registerSourceMavenArtifact
# @USAGE:
# @DESCRIPTION:
# Registers a source-built maven artifact, so that it can be used by other maven-based builds.
registerSourceMavenArtifact() {
		ebegin "Registering a source-built maven artifact"
		local file="${1}"
		shift 1
		local groupId="${1}"
		shift 1
		local artifactId="${1}"
		shift 1
		local version="${1}"
		shift 1
		local extension="${1}"

		registerMavenArtifact $file $groupId $artifactId $version $extension source
}

# @FUNCTION: registerBinaryMavenArtifact
# @USAGE:
# @DESCRIPTION:
# Registers a binary maven artifact, so that it can be used by other maven-based builds.
registerBinaryMavenArtifact() {
		ebegin "Registering a binary maven artifact"
		local file="${1}"
		shift 1
		local groupId="${1}"
		shift 1
		local artifactId="${1}"
		shift 1
		local version="${1}"
		shift 1
		local extension="${1}"

		registerMavenArtifact $file $groupId $artifactId $version $extension binary
}



# @FUNCTION: registerMavenArtifact
# @USAGE:
# @DESCRIPTION:
# Registers a maven artifact, so that it can be used by other maven-based builds.
registerMavenArtifact() {
		ebegin "Registering a maven artifact"
		local file="${1}"
		shift 1
		local groupId="${1}"
		shift 1
		local artifactId="${1}"
		shift 1
		local version="${1}"
		shift 1
		local extension="${1}"
		shift 1
		local type="${1}"

		local locationFile="${version}-${extension}.location"
		echo "${file}" >> ${T}/${locationFile}
		dodir /usr/share/portage-maven-artifact-registry/${type}/${groupId}/${artifactId}
		insinto /usr/share/portage-maven-artifact-registry/${type}/${groupId}/${artifactId}
		doins ${T}/${locationFile}
}
