class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776259771-gf274cb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776259771-gf274cb/amp-darwin-arm64"
      sha256 "e026203bb46e608c7f51e48a640682e877a0910c892d64dfe8c23260a8536128"
    else
      url "https://static.ampcode.com/cli/0.0.1776259771-gf274cb/amp-darwin-x64"
      sha256 "7e91e522a4e878b921fefaa1a7dae0ac5c2592ea2a47d6f5e736eb544e04645d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776259771-gf274cb/amp-linux-arm64"
      sha256 "f2e3ce1397dae25349e63e22fd341562e6ba5adba89297a8bf2be31b1f300195"
    else
      url "https://static.ampcode.com/cli/0.0.1776259771-gf274cb/amp-linux-x64"
      sha256 "c67e5a31766f2c8d5a8f6c32bf120058b3333848c80630d19a5ab9303b5f13d1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
