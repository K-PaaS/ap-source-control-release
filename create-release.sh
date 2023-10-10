echo \
'/****************************************************************
*	${1} : release-name	                                *
*	${2} : version						*	
*       # ./create-relase ap-source-control 1.1.0	*
****************************************************************/
'
bosh create-release --name ${1} --sha2 --force --tarball ./${1}-${2}-release.tgz --version ${2}

