class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783729003-g78d5e5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783729003-g78d5e5/amp-darwin-arm64"
      sha256 "6f30b966df98a79cce6636caf65904353e8e1fea1917c5cf2ee2449de79ddd52"
    else
      url "https://static.ampcode.com/cli/0.0.1783729003-g78d5e5/amp-darwin-x64"
      sha256 "20a45d9041b7a4d366c14fd7d1b69ea1330d50d6c53c038ba59ddd850df95751"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783729003-g78d5e5/amp-linux-arm64"
      sha256 "b25ce6dcf530854ba45c5887e8b9b71dbd61e28fddb160067e739002f2331b10"
    else
      url "https://static.ampcode.com/cli/0.0.1783729003-g78d5e5/amp-linux-x64"
      sha256 "ad39a95bb290332273092ea86b602581d8ad42dff1b79ffe330301442191c089"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
