class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774397105-g723dfb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774397105-g723dfb/amp-darwin-arm64"
      sha256 "9aa319fc01fb1f9f523a5549b0bb898a46411473b4a43c9eec910191f9d7a333"
    else
      url "https://static.ampcode.com/cli/0.0.1774397105-g723dfb/amp-darwin-x64"
      sha256 "6557f404305a17b7c1c97481c451b61692de92a548c5509ecc18afc67b2a794e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774397105-g723dfb/amp-linux-arm64"
      sha256 "8a1a90680b7746c0838f710ac352e15099e450618f87afa1e57dc53ee2a72f52"
    else
      url "https://static.ampcode.com/cli/0.0.1774397105-g723dfb/amp-linux-x64"
      sha256 "2186c7e055003babdd512d2cd9c226ea89d8c280b00a6123a8a28f837cbff90f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
