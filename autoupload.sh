#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <ota zip>"
    exit 1
fi

ZIP="$1"
FILENAME=$(basename $ZIP)
DIR=$(dirname $ZIP)
SCRIPTDIR=$(dirname $0)
DEVICE=$(echo $FILENAME | cut -f5 -d '-' | cut -f1 -d '.')
DATE=$(echo $FILENAME | cut -f3 -d '-')
RECOVERY_NAME=$(echo $FILENAME | sed 's/UNOFFICIAL/recovery/g' | sed 's/\.zip/.img/g')
RELEASENAME="$DEVICE-$DATE"

$SCRIPTDIR/otainfo.sh $ZIP $RELEASENAME > $SCRIPTDIR/$DEVICE.json
cp $DIR/recovery.img $DIR/$RECOVERY_NAME
echo "$(sha256sum $ZIP | cut -f1 -d ' ') $FILENAME" > $SCRIPTDIR/$FILENAME.sha256
echo "$(sha256sum $DIR/$RECOVERY_NAME | cut -f1 -d ' ') $RECOVERY_NAME" > $SCRIPTDIR/$RECOVERY_NAME.sha256

git -C $SCRIPTDIR add $DEVICE.json
git commit -m "OTA: $DEVICE: $DATE"
git tag "$RELEASENAME"
git push origin HEAD:staging --tags

hub release create -a $DIR/$RECOVERY_NAME -a $SCRIPTDIR/$RECOVERY_NAME.sha256 -a $ZIP -a $SCRIPTDIR/$FILENAME.sha256 -m "$DEVICE: $DATE" -t $(git rev-parse HEAD) $RELEASENAME

git push origin HEAD:master --tags
git push origin --delete staging

rm $SCRIPTDIR/$FILENAME.sha256
rm $SCRIPTDIR/$RECOVERY_NAME.sha256
rm $DIR/$RECOVERY_NAME
