#!/bin/bash
find ./src -name \* | entr -rs ./run-all-tests.sh
