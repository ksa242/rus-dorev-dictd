#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
from lxml import etree


if __name__ == '__main__':
    doc = etree.HTML(sys.stdin.read())
    for line in doc.xpath('.//form[@action = "ru-index.html"]/../table[3]/tr'):
        if len(line) == 5:
            term = ''.join(line[1].itertext())
            definition = ''.join(line[3].itertext()).rstrip()
            print("_____")
            print()
            print(term.lower())
            print(term)
            for s in definition.split("\n"):
                print("  %s\n" % (s.replace("'", "\u0301"), ))
            print()
