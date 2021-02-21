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
```

### &copy; TheBoringDude