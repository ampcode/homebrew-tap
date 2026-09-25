class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790294503-g39c830"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790294503-g39c830/amp-darwin-arm64"
      sha256 "5d3567e60b7b3e8671d02f2536717d14b0ad5441cce924cd3aeea59d35fcb940"
    else
      url "https://static.ampcode.com/cli/0.0.1790294503-g39c830/amp-darwin-x64"
      sha256 "6677602fcf8c359d697cbb1b61eec9687603121c96f653d9eae4d0a869919947"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790294503-g39c830/amp-linux-arm64"
      sha256 "e114c40203cef9cbd2b49189c893fab599ae662bd30f3e684003422ddbb51621"
    else
      url "https://static.ampcode.com/cli/0.0.1790294503-g39c830/amp-linux-x64"
      sha256 "f1781a328889c4ba15ef0a22ea266c32fef0d1f0f885850297771eea9d21148b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
