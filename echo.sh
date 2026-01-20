#!/usr/bin/env python
import os
for q in os.getenv("CONFIDENTIAL_ENV_VAR"):
    print(q)
