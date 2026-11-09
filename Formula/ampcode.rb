class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794259441-g8ceaec"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794259441-g8ceaec/amp-darwin-arm64"
      sha256 "7386e1131cd8ab790de9087a4cbb8534c46336a68323fe3021a2a1dc11370e3c"
    else
      url "https://static.ampcode.com/cli/0.0.1794259441-g8ceaec/amp-darwin-x64"
      sha256 "b988042ce3676807a6f5f1fa517fe720cfbb6495f4b859bcfa922380c0ab35f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794259441-g8ceaec/amp-linux-arm64"
      sha256 "65ca38826a202b5897d6a7e9f6609e7f78f5cd0b7d73d5f3946e2f1a7a5765f2"
    else
      url "https://static.ampcode.com/cli/0.0.1794259441-g8ceaec/amp-linux-x64"
      sha256 "6433477d26b4429fc0c075687e3e4b0faf63c53d08d3b736cd3e47b87edd94cf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
