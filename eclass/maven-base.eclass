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
