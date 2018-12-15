
PODSPEC=`ls *.podspec`
PREVersion="$1"
TARGETVersion="$2"

if test -z "${PREVersion}" -o -z "${TARGETVersion}"
then
	echo "pod_publish <PREVersion> <TARGETVersion>"
	exit -1
fi

PREVersion=${PREVersion//\./\\\.}
TARGETVersion=${TARGETVersion//\./\\\.}

sed -i '' "s/${PREVersion}/${TARGETVersion}/g" ${PODSPEC}
git add -A && git commit -m "Release ${TARGETVersion}" . && git push
git tag -f "${TARGETVersion}" && git push -f --tags
pod trunk push ${PODSPEC}

