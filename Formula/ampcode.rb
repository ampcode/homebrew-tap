class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781336269-g79ca9e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781336269-g79ca9e/amp-darwin-arm64"
      sha256 "7eddcacc755f38a9349521df510a3ae7042dd1c4640447cd96786b33011c0623"
    else
      url "https://static.ampcode.com/cli/0.0.1781336269-g79ca9e/amp-darwin-x64"
      sha256 "d05808eb12968cc466c40d545506951e31da103d3faf91479d5299eb3e0ee74f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781336269-g79ca9e/amp-linux-arm64"
      sha256 "2203a6fff8d406ddd413e9dc819073c8e421b952ed7c627815066368611f0077"
    else
      url "https://static.ampcode.com/cli/0.0.1781336269-g79ca9e/amp-linux-x64"
      sha256 "3cba45543486757554dcecdc5183dd9395bc75b80519cc4586ea86321ab9b5c3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
