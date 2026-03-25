class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774413348-g728ecb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774413348-g728ecb/amp-darwin-arm64"
      sha256 "48297c535490aa4ac587e22be628f4db31555b22ed2aa0b61c84f4dd7332ef34"
    else
      url "https://static.ampcode.com/cli/0.0.1774413348-g728ecb/amp-darwin-x64"
      sha256 "8fbdb36e211507ec8a7ac1221bb9c858a279392f435047b2febfd641efcce2e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774413348-g728ecb/amp-linux-arm64"
      sha256 "aadb099ad2ee9bf8cdb27d83b56934d48010d5a851610ff33f5170cd47ecded2"
    else
      url "https://static.ampcode.com/cli/0.0.1774413348-g728ecb/amp-linux-x64"
      sha256 "627782aed55492eefc43aa51ec38ed5be50b3b9e337e3d657328fc2f96b830a1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
