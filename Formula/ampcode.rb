class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777407915-gc1cd3a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777407915-gc1cd3a/amp-darwin-arm64"
      sha256 "f7b29cb5442ea306098c74d3b8b31869ada26e0012923dfd3269242917361454"
    else
      url "https://static.ampcode.com/cli/0.0.1777407915-gc1cd3a/amp-darwin-x64"
      sha256 "16a27587c1b7ccfd9faab42399bdc47d63f337a6237265664bd866cef7a691f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777407915-gc1cd3a/amp-linux-arm64"
      sha256 "5bff1e3388e571fa5f4450796991475ac8e685bd62016eaa0c7581be4bf67703"
    else
      url "https://static.ampcode.com/cli/0.0.1777407915-gc1cd3a/amp-linux-x64"
      sha256 "bb0a9a996f9b1e084968ddc144bb53c56f9b0ff07efac0a5df5a5bbddca0f848"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
