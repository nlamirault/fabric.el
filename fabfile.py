#!/usr/bin/env python
# -*- coding: utf-8 -*-
# -*- Mode: Python; tab-width: 4 -*-
#
# Copyright (c) Nicolas Lamirault <nicolas.lamirault@gmail.com>
#
# Author: Nicolas Lamirault <nicolas.lamirault@gmail.com>
#

from fabric import api


def hello():
    api.run('ls /tmp')
