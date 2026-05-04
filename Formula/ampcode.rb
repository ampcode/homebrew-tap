class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777921804-gae5962"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777921804-gae5962/amp-darwin-arm64"
      sha256 "a341aebbbabc38a001fc3471c016dd6cbbb4ed4ba7b7e14156c5b0783d7b8bef"
    else
      url "https://static.ampcode.com/cli/0.0.1777921804-gae5962/amp-darwin-x64"
      sha256 "fa2cce4ec047822ff530f94760994e2ef2c5a429d5eb4ecc8a1e3565ac653e93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777921804-gae5962/amp-linux-arm64"
      sha256 "fc6231b613c98379c89d6381549e85ccf81a0ac1f208aa4df016c4aa697ef5b9"
    else
      url "https://static.ampcode.com/cli/0.0.1777921804-gae5962/amp-linux-x64"
      sha256 "7223ae4fbfedd91158cac35dd504ec9d78100a04429cac400dce8ff7d18a289b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
