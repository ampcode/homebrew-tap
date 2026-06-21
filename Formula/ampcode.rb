class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782075665-gbe2b79"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782075665-gbe2b79/amp-darwin-arm64"
      sha256 "f906c8b1c64755f51a8cab52ed7c1339586023e1a665ab8a0edc2b338de62693"
    else
      url "https://static.ampcode.com/cli/0.0.1782075665-gbe2b79/amp-darwin-x64"
      sha256 "369e064496a61f8a627b69c07478bb3c40fa3d63ae5a6f7145b9ba9cb8d2285c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782075665-gbe2b79/amp-linux-arm64"
      sha256 "86bb140aeaf6588f278b0394058d4cbd54dee13b0587adf8a2548ff77e915b85"
    else
      url "https://static.ampcode.com/cli/0.0.1782075665-gbe2b79/amp-linux-x64"
      sha256 "729adce9585ffc7b3e2f8d65efdb41ef48428fa64c467d11c1ade9ead56c1879"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
