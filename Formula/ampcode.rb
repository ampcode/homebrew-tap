class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779749852-ge0d3c6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779749852-ge0d3c6/amp-darwin-arm64"
      sha256 "800dd0e15b73104dd4c202cc3233dd0f1719d229d3894a5e5ce7e0556844c926"
    else
      url "https://static.ampcode.com/cli/0.0.1779749852-ge0d3c6/amp-darwin-x64"
      sha256 "c3b2447ea5466518e59164353f60c2c26d2d2389eefb4ccfa05f561340769d6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779749852-ge0d3c6/amp-linux-arm64"
      sha256 "ed215942ac36361b455a2637da6d6b61e88286fc9cd5bf684be552b3e1cea835"
    else
      url "https://static.ampcode.com/cli/0.0.1779749852-ge0d3c6/amp-linux-x64"
      sha256 "01980691ba9623ddad76cee2971d5a67d46f25b8bb002c633e67de21572a37d9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
