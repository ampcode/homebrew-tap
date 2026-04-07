class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775550061-g750327"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775550061-g750327/amp-darwin-arm64"
      sha256 "d6159b72a2334254f1f17f84dde1d98c8a222c98db3c33ce0f36f5e8294603c1"
    else
      url "https://static.ampcode.com/cli/0.0.1775550061-g750327/amp-darwin-x64"
      sha256 "6896bef585cd2dd0fabfec32efa049ffcb28a1886a4950dfb3565617bd85c426"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775550061-g750327/amp-linux-arm64"
      sha256 "55fcf81f4d09fe7564d1da8104be0c5ebd13d85cf03074727228652374bbd51d"
    else
      url "https://static.ampcode.com/cli/0.0.1775550061-g750327/amp-linux-x64"
      sha256 "6efcd0856ac5877a25e00636f1c611b241eb95d841add5b14ddc75be85f9043f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
