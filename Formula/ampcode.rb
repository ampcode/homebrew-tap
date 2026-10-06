class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791302439-g888480"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791302439-g888480/amp-darwin-arm64"
      sha256 "22b5fa991f6b1675a6c0223992b67c9de9aceafb0f9f775ff46c6c6d6d357cfc"
    else
      url "https://static.ampcode.com/cli/0.0.1791302439-g888480/amp-darwin-x64"
      sha256 "8894cb55e785a292024ed17c9e8e21654c5369bcb96786488473dc04ddb636f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791302439-g888480/amp-linux-arm64"
      sha256 "513988bb04809ea788aa924aabfd605f7bc0777072605292884b0ebcef5bf6e1"
    else
      url "https://static.ampcode.com/cli/0.0.1791302439-g888480/amp-linux-x64"
      sha256 "cb34931b0f55175a4b624f3c3fb46edef4f568cf9c878f667d5dd336fed83441"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
