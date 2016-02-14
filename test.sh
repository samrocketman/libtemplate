#!/bin/bash
set +e
count=0
STATUS=1
if ! grep 'org.gradle.daemon=true' "${HOME}/.gradle/gradle.properties" &> /dev/null; then
  echo "Enabling Gradle Daemon"
  echo 'org.gradle.daemon=true' >> "${HOME}/.gradle/gradle.properties"
fi
echo "Assemble dependencies."
while [ ! "${STATUS}" = "0" ];do
  ./gradlew assemble
  STATUS=$?
  if [ ${STATUS} -eq 0 -o ${count} -ge 1 ];then
    break
  fi
  echo "Failed to assemble dependencies.  Sleep 5 and retry."
  sleep 5
  ((count++))
done
if [ ! "$STATUS" = '0' ]; then
  exit $STATUS
fi
set -ex
./gradlew check
