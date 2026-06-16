class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781618295-g41a260"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781618295-g41a260/amp-darwin-arm64"
      sha256 "9399c06e86391b80e83b784d824ea7ef83b1aee5ecfcfb44e52067129f9d4b5a"
    else
      url "https://static.ampcode.com/cli/0.0.1781618295-g41a260/amp-darwin-x64"
      sha256 "e73df69a0084e87cd1bfec690fea9d7ebabe577070cda749f3e33f8968ffd54f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781618295-g41a260/amp-linux-arm64"
      sha256 "c1b80e5f3ddbbacd87df9c3b51377872ab060635d0985cd3bb1ee44b69e0779f"
    else
      url "https://static.ampcode.com/cli/0.0.1781618295-g41a260/amp-linux-x64"
      sha256 "2002e1f7d60b86ec61134410ce5fe6470d492826840abcddc298ce164f1cbf72"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
