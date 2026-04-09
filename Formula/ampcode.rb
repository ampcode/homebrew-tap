class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775709908-g4af98e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775709908-g4af98e/amp-darwin-arm64"
      sha256 "7126d00f92d1a5ad02367db78a5b767e71da111da4ffad359673c8726c3bfa4b"
    else
      url "https://static.ampcode.com/cli/0.0.1775709908-g4af98e/amp-darwin-x64"
      sha256 "d2b7c6a077f6775c3fbf7a6ebe03970bc2ee74d305b88458e6ff60c630c1178c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775709908-g4af98e/amp-linux-arm64"
      sha256 "e3eb110b244f27049388a6c79134e4b5e9356b8c0b69838159d3f1c1c37da1ae"
    else
      url "https://static.ampcode.com/cli/0.0.1775709908-g4af98e/amp-linux-x64"
      sha256 "3062784ea13b8d00d594eea5d5b4f19b171f1c644834afa6a8a5eaf47272ba0b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
