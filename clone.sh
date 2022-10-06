#!/bin/sh

echo "Cloning repositories..."

PERSONAL=$HOME/Personal
WORK=$HOME/Work

# Personal
git@github.com:mshamasa/dotfiles.git $PERSONAL

# Work
git@github.tesla.com:digital-experience/energy-project-management.git $WORK
git@github.tesla.com:digital-experience/fulfillment-graphql-server.git $WORK
git@github.tesla.com:DEVEX/atm-deploy-config.git $WORK
