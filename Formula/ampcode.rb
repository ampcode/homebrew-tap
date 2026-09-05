class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788595248-g1c7a80"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788595248-g1c7a80/amp-darwin-arm64"
      sha256 "12445ea00315f0944930ab842b869c3746e82a450f106894d09f03a26a3fee36"
    else
      url "https://static.ampcode.com/cli/0.0.1788595248-g1c7a80/amp-darwin-x64"
      sha256 "1627bc5efff214658bd7597f534e030d95ff600e8f3f95bcaca63fc6c83e4fd5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788595248-g1c7a80/amp-linux-arm64"
      sha256 "0bbd885b10060825b0202939b3f3177d00609f2a3bce6f7ef9c8bc0e614df3a1"
    else
      url "https://static.ampcode.com/cli/0.0.1788595248-g1c7a80/amp-linux-x64"
      sha256 "66ce26a0f674a62b6d7f2a9df089f1e6d4f396b265db22fd4b16fa8654f90704"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
