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
DEVICE=$(echo $FILENAME | cut -f5 -d '-' | cut -f1 -d '.')
DATE=$(echo $FILENAME | cut -f3 -d '-')
RECOVERY_NAME=$(echo $FILENAME | sed 's/UNOFFICIAL/recovery/g' | sed 's/\.zip/.img/g')
RELEASENAME="$DEVICE-$DATE"

$SCRIPTDIR/otainfo.sh $ZIP $(hub browse -u) $RELEASENAME > $REPODIR/$DEVICE.json
cp $BUILDDIR/recovery.img $BUILDDIR/$RECOVERY_NAME
echo "$(sha256sum $ZIP | cut -f1 -d ' ') $FILENAME" > $REPODIR/$FILENAME.sha256
echo "$(sha256sum $BUILDDIR/$RECOVERY_NAME | cut -f1 -d ' ') $RECOVERY_NAME" > $REPODIR/$RECOVERY_NAME.sha256

git -C $REPODIR add $DEVICE.json
git -C $REPODIR commit -m "OTA: $DEVICE: $DATE"
git -C $REPODIR tag "$RELEASENAME"
git -C $REPODIR push origin HEAD:staging --tags

hub -C $REPODIR release create -a $BUILDDIR/$RECOVERY_NAME -a $REPODIR/$RECOVERY_NAME.sha256 -a $ZIP -a $REPODIR/$FILENAME.sha256 -m "$DEVICE: $DATE" -t $(git rev-parse HEAD) $RELEASENAME

git -C $REPODIR push origin HEAD:master --tags
git -C $REPODIR push origin --delete staging

rm $REPODIR/$FILENAME.sha256 $REPODIR/$RECOVERY_NAME.sha256 $BUILDDIR/$RECOVERY_NAME
