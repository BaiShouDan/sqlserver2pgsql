#!/usr/bin/env bats

@test "schema conversion test" {
  mkdir /tmp/artifacts
  ./sqlserver2pgsql.pl -f regression/reg_tests.sql -b /tmp/artifacts/before -a /tmp/artifacts/after -u /tmp/artifacts/unsure -k /tmp/artifacts/kettle -sd 1 -sh 1 -sp 1 -su 1 -sw 1 -pd 1 -ph 1 -pp 1 -pu 1 -pw 2
  mkdir /tmp/workspace
  tar czf /tmp/workspace/all_files.tgz /tmp/artifacts/before /tmp/artifacts/after /tmp/artifacts/unsure /tmp/artifacts/kettle
}
