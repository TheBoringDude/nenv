# nenv
Simple `.env` file parser for Nim

## Install
```bash
nimble install https://github.com/TheBoringDude/nenv.git
```

## Usage
```nim
import nenv
import os

loadEnv()

echo getEnv("HELLO")

# get values in their respective types
# .. these functions will throw ValueError if 
# ..  their values can't be parsed
echo typeof getEnvInt("NUM")
echo typeof getEnvFloat("DECIMAL")
echo typeof getEnvBool("BOOL")
```

### &copy; TheBoringDude