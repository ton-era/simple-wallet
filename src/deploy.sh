#!/bin/bash

FUNC="/opt/ton/build/crypto/func"
FIFT_PATH="/opt/ton/ton/crypto/fift"
FIFT_EXE_PATH="/opt/ton/build/crypto/fift"
STD_LIB="./stdlib.fc"
OUT_PATH="build"
REQUESTS_PATH="requests"


export FIFTPATH=$FIFT_PATH/lib

rm $OUT_PATH/simple-wallet.fif

$FUNC -o $OUT_PATH/simple-wallet.fif -SPA $STD_LIB simple-wallet.fc

$FIFT_EXE_PATH -s $REQUESTS_PATH/new-simple-wallet.fif
$FIFT_EXE_PATH -s $REQUESTS_PATH/transfer-simple-wallet.fif