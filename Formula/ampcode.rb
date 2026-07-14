class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784023437-g8fe025"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784023437-g8fe025/amp-darwin-arm64"
      sha256 "5605b68618daf7b3d7f3dd7f8abb0b0b9cea8b32d62a2809a90cc91007b9392a"
    else
      url "https://static.ampcode.com/cli/0.0.1784023437-g8fe025/amp-darwin-x64"
      sha256 "364a6610547eac3ca383be97a09194c4d39bdaf93ec97db2ca3f8d80e9fc301e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784023437-g8fe025/amp-linux-arm64"
      sha256 "d7885efa5e2ac3222cb1a74c229ac56bd0ace640906962b803cdbefc736a44a1"
    else
      url "https://static.ampcode.com/cli/0.0.1784023437-g8fe025/amp-linux-x64"
      sha256 "3d9a2dfa4365aed1c00b6f9b8ec5ddd31e71a22f2230e8c6929e648c79501da9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
