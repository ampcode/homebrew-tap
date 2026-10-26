class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793011491-g05de24"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793011491-g05de24/amp-darwin-arm64"
      sha256 "0ce61437c63955d5d8eba7a307157c8fc90bca91ca4e382549cb41ccbf33c858"
    else
      url "https://static.ampcode.com/cli/0.0.1793011491-g05de24/amp-darwin-x64"
      sha256 "b7dd2731d6f0d9bc813a50b1974cd3367c9645caaa39e073245f0e0fc0a21bba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793011491-g05de24/amp-linux-arm64"
      sha256 "4591302ad95ba79c62b07421dfab87ad99db014eebaf8f429779a321fab76a5a"
    else
      url "https://static.ampcode.com/cli/0.0.1793011491-g05de24/amp-linux-x64"
      sha256 "28572c3dbe6e205a18be78b4d9e46cb78b07e29543c80a58bae5ddac1b626b0d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
