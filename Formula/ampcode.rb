class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788652884-gab1719"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788652884-gab1719/amp-darwin-arm64"
      sha256 "3ea946ac16abfad5221692e6a34f22f118b99bced7cbdad265125e45eeb11f2e"
    else
      url "https://static.ampcode.com/cli/0.0.1788652884-gab1719/amp-darwin-x64"
      sha256 "3c85dd9532429f37f6e30162ffe1450ee46c1b9f46369c7f0f2ac81f969b64b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788652884-gab1719/amp-linux-arm64"
      sha256 "0b8b9fd43fc0e3104cdb42570d5ede0003a035d23711b963533dc27dc6207956"
    else
      url "https://static.ampcode.com/cli/0.0.1788652884-gab1719/amp-linux-x64"
      sha256 "e818f0183f5f3e743467d70889565a0da00e428e087e3451c4cc9bb4c8e955b0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
