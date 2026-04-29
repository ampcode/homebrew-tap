class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777463478-g80c284"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777463478-g80c284/amp-darwin-arm64"
      sha256 "176df388e5944add8b6f6c31497a290c7f40ffc1bf0f61403193f8c2369e5d94"
    else
      url "https://static.ampcode.com/cli/0.0.1777463478-g80c284/amp-darwin-x64"
      sha256 "74647997fc0024d2c46503363bb8f58691de2482abad163a490a82ff8029dcde"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777463478-g80c284/amp-linux-arm64"
      sha256 "f2a72f59c291a229a759509cfc2c64551530380693f25ccdbb53307b60294726"
    else
      url "https://static.ampcode.com/cli/0.0.1777463478-g80c284/amp-linux-x64"
      sha256 "8b4af2489b2ff3535b7c5cd2051d497198b2630e686d5d1523c89f1eb9e2eca1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
