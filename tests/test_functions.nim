# custom functions unittests

import unittest

import nenv

loadEnv()

test "load str env":
    check getEnvStr("HELLO") == "world"

test "load int env":
    check getEnvInt("NUM") == 90

test "load bool env":
    check getEnvBool("BOOL") == false

test "load float env":
    check getEnvFloat("DECIMAL") == 1.2