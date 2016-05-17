FROM ruby:2.3.0

# Install dependencies:
# - build-essential: To ensure certain gems can be compiled
# - nodejs: Compile assets
# - yui-compressor css compressing
# And remove the cache of apt-get update
RUN apt-get update && \
    apt-get install -qq -y build-essential nodejs yui-compressor --fix-missing --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*
