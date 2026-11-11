class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794384042-gaad4d8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794384042-gaad4d8/amp-darwin-arm64"
      sha256 "b625a0dbcd879ebe2d814ddea7c571c91248030dc3ce7a9a4876dea7a3a27859"
    else
      url "https://static.ampcode.com/cli/0.0.1794384042-gaad4d8/amp-darwin-x64"
      sha256 "15e940ee388069bf968f93500d5450a1f2e9846e59cf8a96fa16cd8cd12cb8c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794384042-gaad4d8/amp-linux-arm64"
      sha256 "c31ded1a133c31ee076f05833d3c6b1b71f645438cc92dd775d7bc22db417926"
    else
      url "https://static.ampcode.com/cli/0.0.1794384042-gaad4d8/amp-linux-x64"
      sha256 "54255b9963a5f87b924ff22a436968ed3b70bce39d5cf35da07713bf8f4ff7d1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
