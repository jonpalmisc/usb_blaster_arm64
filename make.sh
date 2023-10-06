#!/bin/sh -e

if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <archive>" >&2
	exit 1
fi

OUTPUT_DIR="${OUTPUT_DIR:-build}"
ARCHIVE="$1"

rm -fr "${OUTPUT_DIR}" && mkdir "${OUTPUT_DIR}"

unzip -p "${ARCHIVE}" ARM64/Release/FTD2XX.dll >"${OUTPUT_DIR}/usbblstr.dll"
unzip -p "${ARCHIVE}" ARM64/Release/FTDIBUS.sys >"${OUTPUT_DIR}/usbblstr.sys"
unzip -p "${ARCHIVE}" ARM64/Release/FTLANG.dll >"${OUTPUT_DIR}/usbblstrlang.dll"
unzip -p "${ARCHIVE}" ARM64/Release/FTBUSUI.dll >"${OUTPUT_DIR}/usbblstrui.dll"

cp usbblstr.inf "${OUTPUT_DIR}"
