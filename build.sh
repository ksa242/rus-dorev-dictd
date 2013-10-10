#!/bin/sh

NAME=rus-dorev

dictfmt -t --utf8 --without-ver ${NAME} < ${NAME}.txt &&
dictzip ${NAME}.dict &&
tar -czf dictd-${NAME}.tar.gz ${NAME}.dict.dz ${NAME}.index
