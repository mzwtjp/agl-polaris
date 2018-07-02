#!/bin/bash
  
usage_exit() {
  echo "Usage: parcel-blob-encode [-k kind] [blob]
Interpret blob data in PARCEL table.

-k      type of blob
blob    blob data in hex string notation

Kind ids recognized:

ROAD
SHAPE
GUIDE
BKGD
NAME
ROAD_NAME
BKGD_NAME
CHARSTR
DENSITY
MARK
PARCEL_BASIS
BKGD_AREA_CLS
"
  exit 1
}

#VERBOSE=
VERBOSE=1
BLOB=

#
#
#

encode_PARCEL_BASIS() {
}

#
#
#

encode_ROAD_SHAPE() {
}

#
#
#

encode_ROAD_NETWORK() {
}

#
#
#

encode_BKGD() {
}

#
#
#

encode_BKGD_AREA_CLS() {
}

#
#
#

encode__MARK() {
}

#
#
#

encode_ROAD_NAME() {
}

#
#
#

encode_NAME() {
}

#
#
#

encode_GUIDE() {
}

#
#
#

encode_DENSITY() {
}

while getopts k:hv OPT
do
  case $OPT in
    k)
      KIND=$OPTARG
      ;;
    v)
      VERBOSE=1
      ;;
    *)
      usage_exit
      ;;
  esac
done

shift $((OPTIND -1))

echo "KIND=$KIND"

case $KIND in
  "PARCEL_BASIS")
    encode_PARCEL_BASIS
    ;;
  "ROAD_SHAPE")
    encode_ROAD_SHAPE
    ;;
  "ROAD_NETWORK")
    encode_ROAD_NETWORK
    ;;
  "BKGD")
    encode_BKGD
    ;;
  "BKGD_AREA_CLS")
    encode_BKGD_AREA_CLS
    ;;
  "MARK")
    encode_MARK
    ;;
  "ROAD_NAME")
    encode_ROAD_NAME
    ;;
  "NAME")
    encode_NAME
    ;;
  "GUIDE")
    encode_GUIDE
    ;;
  "ROAD_DENSITY")
    encode_DENSITY
    ;;
  *)
    ;;
esac

# final output

echo "BLOB=$BLOB"

