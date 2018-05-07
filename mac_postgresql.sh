#!/usr/bin/env bash

echo "Installing PostgreSQL and starting PostgreSQL service"
brew install postgresql
brew services start postgresql