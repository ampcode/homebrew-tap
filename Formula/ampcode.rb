class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790596860-g25f22d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790596860-g25f22d/amp-darwin-arm64"
      sha256 "3582d677ba5c9ecfb22ae3af6179c0d6b5ab86ade3e5795fc643ebe956d1e19d"
    else
      url "https://static.ampcode.com/cli/0.0.1790596860-g25f22d/amp-darwin-x64"
      sha256 "aec28bbb84b05521626b12a449f5ec376d42c41b57548eea27a864b80d1375ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790596860-g25f22d/amp-linux-arm64"
      sha256 "8eb91bef6a321c9786d2be1454651046e1a4b0b0b4636b8d0616e3b5dedff439"
    else
      url "https://static.ampcode.com/cli/0.0.1790596860-g25f22d/amp-linux-x64"
      sha256 "efe432501d64e2f0c6261a8dbb43a7b7216081db7167570c2b45b2d5c3fe2a7a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
