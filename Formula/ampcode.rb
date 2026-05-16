class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778900196-g05008a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778900196-g05008a/amp-darwin-arm64"
      sha256 "846377159111ec037d9e05c1eb1b642b04a5991f0da68aae4fa1ada90fb03d2f"
    else
      url "https://static.ampcode.com/cli/0.0.1778900196-g05008a/amp-darwin-x64"
      sha256 "a36f3e4a3a9d3d5c019361b0facf2c3b60433dacc13906c03025279b579cf10a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778900196-g05008a/amp-linux-arm64"
      sha256 "c0d20c0cc37e77327ad2ce7b97701421c80f67e7ef042f8caa8d06dbe394696c"
    else
      url "https://static.ampcode.com/cli/0.0.1778900196-g05008a/amp-linux-x64"
      sha256 "174aee9ccf8bc563c3a5a5bd19c1b33c7243902bbddfcfdc934e47331933a4b8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
