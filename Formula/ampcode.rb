class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778043701-g5ad374"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778043701-g5ad374/amp-darwin-arm64"
      sha256 "2268dd1171b57d93cf30ed1428dd62727702cc2012412dcd22b26dcd283688e3"
    else
      url "https://static.ampcode.com/cli/0.0.1778043701-g5ad374/amp-darwin-x64"
      sha256 "29c38dc1e877a806fa2c31dee0355ab640b288feb6de567bf2f93779c7cb9080"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778043701-g5ad374/amp-linux-arm64"
      sha256 "ae98e37cbf9127cc4cbf088582dfefd706c4750cca01b5cbe3b7c1dfcd40a433"
    else
      url "https://static.ampcode.com/cli/0.0.1778043701-g5ad374/amp-linux-x64"
      sha256 "e737e38ccffcb448bf0261663e99f13086e2e63976bd432817c9051d3c051b34"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
