class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776933021-g3c3759"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776933021-g3c3759/amp-darwin-arm64"
      sha256 "8e4f7f84e8e227990571d6efb4378687ecb16905600ac92d82656d9435ac23db"
    else
      url "https://static.ampcode.com/cli/0.0.1776933021-g3c3759/amp-darwin-x64"
      sha256 "75c2d08e51bdcc79c432b91f07bb1de97cbdefd7afc2c13c032ff6726282d3e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776933021-g3c3759/amp-linux-arm64"
      sha256 "1dfabf58307108405608b9e006f61f4843425dbf73d196cec536a84a432080fb"
    else
      url "https://static.ampcode.com/cli/0.0.1776933021-g3c3759/amp-linux-x64"
      sha256 "b24941a565746ddd6ec4da6cd17a432f8036f2c5404cfb4c909336cc4a9e66b1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
