class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774959077-ga71644"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774959077-ga71644/amp-darwin-arm64"
      sha256 "ee2522970967f68268ad3a31d7d1759988f7c28e529ab8362fd0a2defdca3d35"
    else
      url "https://static.ampcode.com/cli/0.0.1774959077-ga71644/amp-darwin-x64"
      sha256 "1016fd7dc42053bf8a73ae443282287a1d2d78d2850434949362e2dde8c49226"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774959077-ga71644/amp-linux-arm64"
      sha256 "574191c356a3dbc2172d01b5916734d76d17733d14ae576989d99c9b407fd1a2"
    else
      url "https://static.ampcode.com/cli/0.0.1774959077-ga71644/amp-linux-x64"
      sha256 "eee32396ed5cf6f9ac44a6dc744d485c88e1be955382648ceed2d2ea53702ae2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
