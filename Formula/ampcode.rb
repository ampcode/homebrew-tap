class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787385798-gee1365"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787385798-gee1365/amp-darwin-arm64"
      sha256 "9585773bc92b3caa50f4dc83898673112373fbd87a357a9b993f9e1e2110cb18"
    else
      url "https://static.ampcode.com/cli/0.0.1787385798-gee1365/amp-darwin-x64"
      sha256 "03a96df8710547fd77b2b699c7ab4c7aac68ab845bcc4b66c0177ea6e5878c73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787385798-gee1365/amp-linux-arm64"
      sha256 "c05ffe1ef13102b20e8b708b73a04391f5f087d6c63b766d95452a969be88f5e"
    else
      url "https://static.ampcode.com/cli/0.0.1787385798-gee1365/amp-linux-x64"
      sha256 "64e0e526cdd5c0a0fe663f1214dfd9bda5751a2134f3de47fdc5f3da7a37083d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
