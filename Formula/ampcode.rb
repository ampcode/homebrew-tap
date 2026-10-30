class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793390435-g08e9ec"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793390435-g08e9ec/amp-darwin-arm64"
      sha256 "def3b77c8b05d5bbbb69dbb66d63050b1e22652e14c245ea0aff042518f3031a"
    else
      url "https://static.ampcode.com/cli/0.0.1793390435-g08e9ec/amp-darwin-x64"
      sha256 "c25f5fa00d176b75833f7a0e22e9fc5fe3e55144c002499d8b099d38b85821c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793390435-g08e9ec/amp-linux-arm64"
      sha256 "5c9f89aa932e0d2f6a0c8c15fef81baa3b58b9eb149967ff638c3dab18fbb84e"
    else
      url "https://static.ampcode.com/cli/0.0.1793390435-g08e9ec/amp-linux-x64"
      sha256 "29c004feef503fb663faba95cf442abcf40cd0926ba727529ee1302db60767e5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
