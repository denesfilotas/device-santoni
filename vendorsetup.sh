echo "Eat and omnom seem to be broken."
echo "Use nomnom <codename> to build and sideload. This is to replace omnom."
echo "After builing, use nom to sideload ROM. This is to replace eat."
function nom()
{
    if [ "$OUT" ] ; then
        ZIPPATH=`ls -tr "$OUT"/Bliss-*.zip | tail -1`
        if [ ! -f $ZIPPATH ] ; then
            echo "Nothing to eat"
            return 1
        fi
        echo "Waiting for device in recovery..."
        adb wait-for-recovery
        echo "Found device"
        if (adb shell getprop ro.product.device | grep -q "$BLISS_BUILD"); then
            echo "Rebooting to sideload for install..."
            adb reboot sideload-auto-reboot
            echo "Command sent. If nothing happened, open sideload manually."
            echo "Waiting for device in sideload..."
            adb wait-for-sideload
            adb sideload $ZIPPATH
        else
            echo "The connected device does not appear to be $BLISS_BUILD, run away!"
        fi
        return $?
    else
        echo "Nothing to eat"
        return 1
    fi
}

function nomnom()
{
    blissify $@ && nom
}
