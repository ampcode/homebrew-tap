class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791273659-g33d612"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791273659-g33d612/amp-darwin-arm64"
      sha256 "9eed558566c2053cef3166f0c0e3a9e9c3a57dc6b1832e3af4621431892c44d7"
    else
      url "https://static.ampcode.com/cli/0.0.1791273659-g33d612/amp-darwin-x64"
      sha256 "1b6e04f5b40dad76688662cad7d5c51ab695292e0ba30d05be049ae1b384c3b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791273659-g33d612/amp-linux-arm64"
      sha256 "71bb9e04be539406864e3b3d3f91c607687d94d87f11ee5f69b2fb2e6943de3a"
    else
      url "https://static.ampcode.com/cli/0.0.1791273659-g33d612/amp-linux-x64"
      sha256 "bec4833efa5a607357aefec2fcf6384205324648a8f9afc02f886fb81b1ac2f1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
