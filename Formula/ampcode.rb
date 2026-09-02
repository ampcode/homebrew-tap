class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788364855-g4bac9f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788364855-g4bac9f/amp-darwin-arm64"
      sha256 "7815d691e6c4f4fc8e0b47c1d772acc9f39e0e646c564812d5ba6b84df4ea74f"
    else
      url "https://static.ampcode.com/cli/0.0.1788364855-g4bac9f/amp-darwin-x64"
      sha256 "08f163c30fb613f7c2d592f9cc251086fd928d5d57ce4f9915f88facb05d1239"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788364855-g4bac9f/amp-linux-arm64"
      sha256 "780bb70abf02c14bcc7b0b2d1681cfd7841ba8da58bb6309d113abea20b41d21"
    else
      url "https://static.ampcode.com/cli/0.0.1788364855-g4bac9f/amp-linux-x64"
      sha256 "602fe79e5e11e5b6601606d49ba7fe470c2a30232be243093444f298473bc409"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
