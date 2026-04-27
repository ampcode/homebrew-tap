class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777266064-g47b6f7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777266064-g47b6f7/amp-darwin-arm64"
      sha256 "b0d4a917248b2c02afecf20db57663f0919b5a0055e94c322911829814344290"
    else
      url "https://static.ampcode.com/cli/0.0.1777266064-g47b6f7/amp-darwin-x64"
      sha256 "471a38b7728a406b440b09a9fccf7e7e013fb237f51c96592fcf3468ca1f4e8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777266064-g47b6f7/amp-linux-arm64"
      sha256 "6f5c125308dfa3b7cc59d8792d651b117c096946a6350e717cbf0cddfa17f92a"
    else
      url "https://static.ampcode.com/cli/0.0.1777266064-g47b6f7/amp-linux-x64"
      sha256 "f0dd06c8d7554f04b1ba702c16306b2524d8a6c78600f632f79ebd529b46a00e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
