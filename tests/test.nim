# simple package unit tests

import unittest
import os

import nenv

# check if env "HELLO" exists from the environment variables
test "can load env var":
  loadEnv()

  # HELLO is from .env file
  check getEnv("HELLO") == "world"

  check getEnv("NONE") == ""


# check if it loads custom .env files
test "can load custom filename":
  loadEnv(filename = "sample.env")

  # SAMPLE is from sample.env file
  check getEnv("SAMPLE") == "123"


# check using lowerKeys environment variables
test "can use lowerKeys env vars":
  loadEnv(upperKeys = false)

  # SAMPLE is from sample.env file
  check getEnv("lower") == "Upper"
