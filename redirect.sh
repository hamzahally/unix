#!/bin/bash
echo Just '>' __________________________________________
find /etc -name grub >grub.out
echo Doing '2>' ________________________________________
find /etc -name grub 2>errs.out
echo Doing '&>' _______________________________________
find /etc -name grub &>both.out
