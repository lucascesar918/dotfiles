#!/bin/bash

aux=$LC_TIME
export LC_TIME=en_US.UTF-8

case `date +%a` in
  "Sun" | "Sat")
    echo "Isn't it a beautiful day? It is already $(date +%A)"
    ;;

  *)
    echo "What a week, huh?"
    echo "Captain, it's $(date +%A)"
    ;;
esac

export LC_TIME=$aux
