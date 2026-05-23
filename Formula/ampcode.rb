class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779513076-g569086"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779513076-g569086/amp-darwin-arm64"
      sha256 "1374ec26ff51671f72296b797c1547d05c3f98d96b19312b884e560014bf86ba"
    else
      url "https://static.ampcode.com/cli/0.0.1779513076-g569086/amp-darwin-x64"
      sha256 "7f767304086c418a362930201d9c2202c3b49a8d9488253c02620bdb18a2a556"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779513076-g569086/amp-linux-arm64"
      sha256 "9120366e53c294d13f88fe3054a0fc44d435d258ffe4e9410d3e308ba605edea"
    else
      url "https://static.ampcode.com/cli/0.0.1779513076-g569086/amp-linux-x64"
      sha256 "8f68abc84bb4c95c344af0093f437d03f29b0158e6e7f63d6f428fa69db3f13f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
