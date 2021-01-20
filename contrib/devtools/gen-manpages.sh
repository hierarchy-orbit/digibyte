#!/usr/bin/env bash
# Copyright (c) 2016-2019 The DigiByte Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

DIGIBYTED=${DIGIBYTED:-$BINDIR/digibyted}
DIGIBYTECLI=${DIGIBYTECLI:-$BINDIR/digibyte-cli}
DIGIBYTETX=${DIGIBYTETX:-$BINDIR/digibyte-tx}
<<<<<<< HEAD
=======
WALLET_TOOL=${WALLET_TOOL:-$BINDIR/digibyte-wallet}
>>>>>>> 5358de127d898d4bb197e4d8dc2db4113391bb25
DIGIBYTEQT=${DIGIBYTEQT:-$BINDIR/qt/digibyte-qt}

[ ! -x $DIGIBYTED ] && echo "$DIGIBYTED not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
<<<<<<< HEAD
DGBVER=($($DIGIBYTECLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))
=======
read -r -a DGBVER <<< "$($DIGIBYTECLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }')"
>>>>>>> 5358de127d898d4bb197e4d8dc2db4113391bb25

# Create a footer file with copyright content.
# This gets autodetected fine for digibyted if --version-string is not set,
# but has different outcomes for digibyte-qt and digibyte-cli.
echo "[COPYRIGHT]" > footer.h2m
$DIGIBYTED --version | sed -n '1!p' >> footer.h2m

<<<<<<< HEAD
for cmd in $DIGIBYTED $DIGIBYTECLI $DIGIBYTETX $DIGIBYTEQT; do
=======
for cmd in $DIGIBYTED $DIGIBYTECLI $DIGIBYTETX $WALLET_TOOL $DIGIBYTEQT; do
>>>>>>> 5358de127d898d4bb197e4d8dc2db4113391bb25
  cmdname="${cmd##*/}"
  help2man -N --version-string=${DGBVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${DGBVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
