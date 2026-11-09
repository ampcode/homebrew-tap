class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794196844-g44d37b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794196844-g44d37b/amp-darwin-arm64"
      sha256 "4808d6f901eb4bceae4a606c3ab1ee617aacd37f830fe1a6807aca5535949c53"
    else
      url "https://static.ampcode.com/cli/0.0.1794196844-g44d37b/amp-darwin-x64"
      sha256 "37d1299f9484de8f6ce04e4da23b4874734ec5415833591949c9bde5064d65f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794196844-g44d37b/amp-linux-arm64"
      sha256 "ac59f71f2200adbd49ad96f7d8dd3c26d2a3bb0a8d5dad07958419a196cbf9cb"
    else
      url "https://static.ampcode.com/cli/0.0.1794196844-g44d37b/amp-linux-x64"
      sha256 "fe2054cba5d6ad94dab3402bf935247a35eff4a306cc40165f1ceadf699fc31c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
