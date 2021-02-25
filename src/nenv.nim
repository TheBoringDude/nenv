import os
import strutils


proc loadEnv*(filename: string = ".env", upperKeys: bool = true) =
  ## loadEnv loads the '.env' file and parses it to the environment variables to be accessible
  ## || filename = custom .env filename, defaults to .env
  ## || upperKeys = environment variables will be capitalized, defaults to true

  var f: File

  if open(f, joinPath(getCurrentDir(), filename)):
    for i in f.lines:
      if '=' in i:
        var tempEnv = split(i, '=')

        var key = tempEnv[0].strip()

        # if upperkey is set to true
        if upperKeys:
          key = key.toUpper()

        putEnv(key, tempEnv[1].strip())

  
  defer: f.close()
