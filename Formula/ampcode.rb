class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776852749-gf7d8a7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776852749-gf7d8a7/amp-darwin-arm64"
      sha256 "b8eb3fe7ff579d0d74ad84968e686fc5a9a4741c9e028e4963ae917dcf8f283f"
    else
      url "https://static.ampcode.com/cli/0.0.1776852749-gf7d8a7/amp-darwin-x64"
      sha256 "3c27c07b5d21aa2881e174d478960c3ac9cc143fec76d34e0c3643ff757eb14a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776852749-gf7d8a7/amp-linux-arm64"
      sha256 "d9ef5b92379dbb5e54f7dd6181fa86b2059fdacd97eaed486f4b566664b6b1a2"
    else
      url "https://static.ampcode.com/cli/0.0.1776852749-gf7d8a7/amp-linux-x64"
      sha256 "c7f250039964f21376e143b22c098a10f664eca38eb29a3da63bce5298ee39e1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
