#!/usr/bin/sh

extension="" # FIXME get the file extension

result=""

case "${extension}" in
  ("json") result="application/json";;
esac

echo "${result}"
