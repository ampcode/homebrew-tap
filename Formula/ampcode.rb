class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776356874-g1cd725"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776356874-g1cd725/amp-darwin-arm64"
      sha256 "03d110989e83f5c835015c9620286abc3605ba9ab9c4bb205c711de8568ab139"
    else
      url "https://static.ampcode.com/cli/0.0.1776356874-g1cd725/amp-darwin-x64"
      sha256 "9cb5071f1b1788eea0caf8f86b624c43a16a916500d1a8d3fd47f2f6f25fb8ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776356874-g1cd725/amp-linux-arm64"
      sha256 "d0de620b92b63d5f08f2943530fdfd6b4da1b03337789f4ababcdfedb3e844b6"
    else
      url "https://static.ampcode.com/cli/0.0.1776356874-g1cd725/amp-linux-x64"
      sha256 "36f059b35fe9d5f285a36a05344f4ade75451419bc72c390dc3e52ec24aa71f5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
