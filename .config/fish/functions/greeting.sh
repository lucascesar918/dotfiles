#!/bin/bash

case `date +%a` in
  "Sun" | "Sat")
    echo "Isn't it a beautiful day? It is already $(date +%A)"
    ;;

  *)
    echo "What a week, huh?"
    echo "Captain, it's $(date +%A)"
    ;;
esac
