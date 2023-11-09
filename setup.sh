#!/bin/bash

# Install Homebrew if it's not installed
echo "Installing Homebrew..."
if ! command -v brew &>/dev/null; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Update Homebrew
echo "Updating Homebrew..."
brew update

# Install AWS CLI
echo "Installing AWS CLI..."
if ! command -v aws &>/dev/null; then
    echo "AWS CLI not found. Installing AWS CLI..."
    brew install awscli
else
    echo "AWS CLI is already installed."
fi

# Configure AWS CLI
echo "Configuring AWS CLI..."
aws configure

echo "Setup completed!"
