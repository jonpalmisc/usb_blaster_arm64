#!/bin/sh -e

if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <X64.zip> <ARM64.zip>" >&2
	exit 1
fi

OUTPUT_DIR="${OUTPUT_DIR:-build}"
X64_ARCHIVE="$1"
ARM64_ARCHIVE="$2"

rm -fr "${OUTPUT_DIR}" && mkdir "${OUTPUT_DIR}"

unzip -p "${X64_ARCHIVE}" amd64/ftd2xx64.dll >"${OUTPUT_DIR}/usbblstr64.dll"
unzip -p "${X64_ARCHIVE}" amd64/ftlang.dll >"${OUTPUT_DIR}/usbblstrlang.dll"
unzip -p "${X64_ARCHIVE}" amd64/ftbusui.dll >"${OUTPUT_DIR}/usbblstrui.dll"

unzip -p "${ARM64_ARCHIVE}" ARM64/Release/FTDIBUS.sys >"${OUTPUT_DIR}/usbblstr.sys"

cp usbblstr.inf "${OUTPUT_DIR}"
