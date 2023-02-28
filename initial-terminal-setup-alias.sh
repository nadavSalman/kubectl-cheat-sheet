#!/bin/bash


# Aliases are not expanded when the shell is not interactive, unless the expand_aliases shell option is set using shopt (see the description of shopt under SHELL BUILTIN COMMANDS below).
shopt -s expand_aliases


alias k=kubectl

export do="-o yaml --dry-run=client"

k create deployment  my_deployment --image=nginx $do