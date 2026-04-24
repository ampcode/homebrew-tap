class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777047375-g18c053"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777047375-g18c053/amp-darwin-arm64"
      sha256 "a1432f5a56c778f51db3ba9355fb67d85a25b01fbe3ee2ba093097e77d19380e"
    else
      url "https://static.ampcode.com/cli/0.0.1777047375-g18c053/amp-darwin-x64"
      sha256 "47710fc20f9415a1dcfb5a8a9774c453bdf168aa55597d36c1c873b6edf31bc6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777047375-g18c053/amp-linux-arm64"
      sha256 "ef0b064683f91af94cf6217f5ec8c8fe4993dcce1771ef46be3af1294cad069e"
    else
      url "https://static.ampcode.com/cli/0.0.1777047375-g18c053/amp-linux-x64"
      sha256 "30b2d6d203d5dfee81319ad22b8abb198d0cbe5a835381a7c62bc927ea33d803"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
