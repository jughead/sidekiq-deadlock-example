#!/bin/bash

curl 'http://localhost:3000/action_a?id=1' &
curl 'http://localhost:3000/action_b?id=1' &
wait
