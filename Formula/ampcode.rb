class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787702575-g2427cf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787702575-g2427cf/amp-darwin-arm64"
      sha256 "bb65e9d0496f356453261e732c6fdccab8cb6c25c6a06a6e2bccd55b60fcb9dc"
    else
      url "https://static.ampcode.com/cli/0.0.1787702575-g2427cf/amp-darwin-x64"
      sha256 "ecaf0b6465a273386fa738975f29d003236efcc773c80ebf829a94d871afb851"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787702575-g2427cf/amp-linux-arm64"
      sha256 "0b740f1ed275a34a56351daeb80e7c68286bc50740f9cc231ae647ead6d423f9"
    else
      url "https://static.ampcode.com/cli/0.0.1787702575-g2427cf/amp-linux-x64"
      sha256 "088473eebd2ddd00cbbb8b60ab947d358496133eb86c8ae2b350e0abac985c9c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
