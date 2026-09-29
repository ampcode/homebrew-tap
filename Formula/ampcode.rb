class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790668858-gda587a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790668858-gda587a/amp-darwin-arm64"
      sha256 "cf3574a718487080cac682aa8786ebc803cba06ea67446db751a8b1076c9d62c"
    else
      url "https://static.ampcode.com/cli/0.0.1790668858-gda587a/amp-darwin-x64"
      sha256 "f137664059ea655b6abd0bf2ad1c5624330ceb469a58885704685188edccefa8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790668858-gda587a/amp-linux-arm64"
      sha256 "ffa3f701a164c6498931c4b9495a338a201c11bb2e058e8b8daffc8f655d1639"
    else
      url "https://static.ampcode.com/cli/0.0.1790668858-gda587a/amp-linux-x64"
      sha256 "685e569685132fef5d4b283360ff4f725c0f181d8c037519d9024eb98e02e4fd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
