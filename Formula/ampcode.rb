class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773418087-gfc6b34"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773418087-gfc6b34/amp-darwin-arm64"
      sha256 "0257a5a782c5e9c8f4e7a3e36b15a3c91dba0cb6c11c738b195641e92361161e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773418087-gfc6b34/amp-darwin-x64"
      sha256 "449afb0dfe538e17f0aedceef96d8c95be67777ac973267edc22fceef4ce2785"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773418087-gfc6b34/amp-linux-arm64"
      sha256 "fc476c22abcb0d5bdb3c78ce6459128def0c0f411076f09e4b180cf8a46f928e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773418087-gfc6b34/amp-linux-x64"
      sha256 "e23f5390097edb951b01823d5aaf658126162d985686c92dde6bd46dff7d4643"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
