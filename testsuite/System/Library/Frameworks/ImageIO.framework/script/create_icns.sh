# SPDX-FileCopyrightText: 2026 Darling Team
# SPDX-License-Identifier: MPL-2.0

# iconutil --convert iconset -o ../resource/iconset/Type.iconset ../resource/icns/Type.icns
# iconutil --convert icns -o ../resource/icns/Type.icns ../resource/iconset/Type.iconset

createIcns() {
    local name="$1"

    local icns_path="../resource/icns/$name.icns"
    local iconset_path="../resource/iconset/$name.iconset"

    echo "Creating $icns_path"
    iconutil --convert icns -o $icns_path $iconset_path
}

# sips -z Size Size ../resource/iconset/Type.iconset/icon_SizexSize.png --setProperty format icns --out ../resource/icns/Type.icns > /dev/null
# sips -z Size Size ../resource/icns/Type.icns --setProperty format icns --out ../resource/iconset/Type.iconset/icon_SizexSize.png > /dev/null

createLegacyIcns() {
    local name="$1"
    local size="$2"

    local icns_path="../resource/icns/$name.icns"
    local iconset_path="../resource/iconset/$name.iconset"
    local png_source="$iconset_path/icon_${size}x${size}.png"

    echo "Creating $icns_path"

    sips -z $size $size "$png_source" \
        --setProperty format icns \
        --out "$icns_path" > /dev/null
}

# Modern version of macOS will create an icNN icon type.
createIcns "Type_ic04"
createIcns "Type_ic05"
createIcns "Type_ic07"
createIcns "Type_ic08"
createIcns "Type_ic09"
createIcns "Type_ic10"
createIcns "Type_ic11"
createIcns "Type_ic12"
createIcns "Type_ic13"
createIcns "Type_ic14"

# Legacy version of macOS will create an icpN icon type
createLegacyIcns "Type_icp4" "16"
createLegacyIcns "Type_icp5" "32"
createLegacyIcns "Type_icp6" "64"
