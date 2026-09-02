class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788307300-gcbd038"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788307300-gcbd038/amp-darwin-arm64"
      sha256 "8bd8ca8f00d289bb4f9c79f9c23b4b68946ce6ba33a7f12ceae9ef405c784d67"
    else
      url "https://static.ampcode.com/cli/0.0.1788307300-gcbd038/amp-darwin-x64"
      sha256 "7e210bd5b81b1cc0d0fde00d9b360a42b04a1d3b170a6a8ff8ec7ad7e045aae3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788307300-gcbd038/amp-linux-arm64"
      sha256 "9c836d73b81e7d8291d99d07b943f46bb76c3ac35ea627af415351e281d38351"
    else
      url "https://static.ampcode.com/cli/0.0.1788307300-gcbd038/amp-linux-x64"
      sha256 "70ba0b119c8ddebb0e4b776bfed216b18552c6819711d09cf5c3226093c9f0fa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
