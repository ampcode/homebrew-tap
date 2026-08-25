class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787664850-g921ac7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787664850-g921ac7/amp-darwin-arm64"
      sha256 "590082d53162bdac705150ffdccd1c887700803905e70680501d860d1b332815"
    else
      url "https://static.ampcode.com/cli/0.0.1787664850-g921ac7/amp-darwin-x64"
      sha256 "a18c4d59392d19c61273f872d88563d0dcaa1e3ae86978ba6f35a67b45632893"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787664850-g921ac7/amp-linux-arm64"
      sha256 "0d2925d25b2dcd2ac0702ebfa07134d060ebdaa3554c999910e6a2c8f6ae1589"
    else
      url "https://static.ampcode.com/cli/0.0.1787664850-g921ac7/amp-linux-x64"
      sha256 "40183a7b7a4221158360f790832238276ad2a6af205212f6c72b495abd6d109d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
