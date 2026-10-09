#!/bin/sh
# The login API answers a wrong login in JSON (the database is up and seeded).
curl -fsS --max-time 10 -d 'username=nobody&password=probe' http://web/api/login.php | grep -q 'Invalid username or password'
