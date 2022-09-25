#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <ota zip>"
    exit 1
fi

ZIP="$1"
FILENAME=$(basename $ZIP)
BUILDDIR=$(dirname $ZIP)
SCRIPTDIR=$(dirname $0)
REPODIR=$(dirname $SCRIPTDIR)
TMPDIR="/tmp"
DEVICE=$(echo $FILENAME | rev | cut -f1 -d '-' | rev | cut -f1 -d '.')
DATE=$(echo $FILENAME | cut -f3 -d '-')
RECOVERY_NAME=$(echo $FILENAME | sed 's/UNOFFICIAL/recovery/g' | sed 's/\.zip/.img/g')
RELEASENAME="$DEVICE-$DATE"

$SCRIPTDIR/otainfo.sh $ZIP $(hub -C $REPODIR browse -u) $RELEASENAME > $REPODIR/$DEVICE.json
cp $BUILDDIR/recovery.img $TMPDIR/$RECOVERY_NAME
cp $ZIP $TMPDIR/$FILENAME
echo "$(sha256sum $TMPDIR/$FILENAME | cut -f1 -d ' ') $FILENAME" > $TMPDIR/$FILENAME.sha256
echo "$(sha256sum $TMPDIR/$RECOVERY_NAME | cut -f1 -d ' ') $RECOVERY_NAME" > $TMPDIR/$RECOVERY_NAME.sha256

git -C $REPODIR add $DEVICE.json
git -C $REPODIR commit -m "OTA: $DEVICE: $DATE"
git -C $REPODIR tag "$RELEASENAME"
git -C $REPODIR push origin HEAD:staging --tags
REV=$(git -C $REPODIR rev-parse HEAD)

( hub -C $REPODIR release create -a $TMPDIR/$RECOVERY_NAME -a $TMPDIR/$RECOVERY_NAME.sha256 -a $TMPDIR/$FILENAME -a $TMPDIR/$FILENAME.sha256 -m "$DEVICE: $DATE" -t $REV $RELEASENAME; \
  git -C $REPODIR push origin $REV:master --tags; \
  [ $(git -C $REPODIR rev-parse origin/staging) = $REV ] && \
	git -C $REPODIR push origin --delete staging; \
  rm $TMPDIR/$FILENAME.sha256 $TMPDIR/$FILENAME $TMPDIR/$RECOVERY_NAME.sha256 $TMPDIR/$RECOVERY_NAME ) &
