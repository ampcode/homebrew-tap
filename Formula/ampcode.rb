class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781870657-ga082e1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781870657-ga082e1/amp-darwin-arm64"
      sha256 "aa84d55e07c27991f986c0aa6e5f85ddee0c2dafc9895c141bca5eac85c162ab"
    else
      url "https://static.ampcode.com/cli/0.0.1781870657-ga082e1/amp-darwin-x64"
      sha256 "802943b4a63b8ad3e9896836d74c4f29ede5ad9535c4f9f30f3fec858049064d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781870657-ga082e1/amp-linux-arm64"
      sha256 "37e105e031af5770947eff9c22e3a2f40611bca007bf2a4fec2dfa45cd577f59"
    else
      url "https://static.ampcode.com/cli/0.0.1781870657-ga082e1/amp-linux-x64"
      sha256 "c5ad7c3ce564b11a9393743b244b7040a3c738a688c4776d0874201cb6df9b70"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
