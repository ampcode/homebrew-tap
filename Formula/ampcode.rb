class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780694019-g120cbb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780694019-g120cbb/amp-darwin-arm64"
      sha256 "526b218441ee97fcd5260924fa4bc060026f81e4b2601615ba85ca9644c28fa7"
    else
      url "https://static.ampcode.com/cli/0.0.1780694019-g120cbb/amp-darwin-x64"
      sha256 "c163b53e380916bdc9404b02151739816cab3d27ff043e95e60575b749d56e45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780694019-g120cbb/amp-linux-arm64"
      sha256 "9e77596f5de12ce51e56273feebf8d71c0ffe1646071534450f0f663b0d3f05d"
    else
      url "https://static.ampcode.com/cli/0.0.1780694019-g120cbb/amp-linux-x64"
      sha256 "e8ee402f38f5cce541c78490fc04cd763da032e030c2bacaf8363d46239aa788"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
