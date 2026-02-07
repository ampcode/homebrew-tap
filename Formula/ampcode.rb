class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770480151-g092beb"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770480151-g092beb/amp-darwin-arm64"
      sha256 "012b6e5cd2ca8212025e344144c47ca1b8d6de82369bbf5c81bd2217037183a2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770480151-g092beb/amp-darwin-x64"
      sha256 "6025ca64420073588861ce2b89e6c269d90cebd3b12c15e5ef14b6e161a31cf5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770480151-g092beb/amp-linux-arm64"
      sha256 "9502aaf9d14a198714351f639cb9ba5ef807a462c05cfe6442ea7ef5bb3f919a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770480151-g092beb/amp-linux-x64"
      sha256 "0083085a0de9acedb807eaa497fa511523df7ed593e9255e9d8d0e170415bd6b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
