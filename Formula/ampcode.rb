class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786422466-g4a3270"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786422466-g4a3270/amp-darwin-arm64"
      sha256 "5ce5cb96ed679028a6238b097cc1184a636c246161dd8b8bb2089f862c324951"
    else
      url "https://static.ampcode.com/cli/0.0.1786422466-g4a3270/amp-darwin-x64"
      sha256 "05133e7e7cf6a606387cd4f22c34c7024ad7b0c0097bd7212167a45301a9dc6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786422466-g4a3270/amp-linux-arm64"
      sha256 "d8c9dcb5cf3e290996682ad4340c6a0136e6b4517f61a2ee3d532ba6e8ab2d9c"
    else
      url "https://static.ampcode.com/cli/0.0.1786422466-g4a3270/amp-linux-x64"
      sha256 "d59e772606c24dd8804a5a7db8fc3a24384f342ae5aa2bd63eb049c867f23276"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
