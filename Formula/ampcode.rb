class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780954218-ga27553"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780954218-ga27553/amp-darwin-arm64"
      sha256 "caeff80a333c2ad40f1bce4d55fb1deec4c12e2794ba77ab2de89b13e344c84e"
    else
      url "https://static.ampcode.com/cli/0.0.1780954218-ga27553/amp-darwin-x64"
      sha256 "b5991468c94a955b3943cced0b75c6c0087609de80b1b341d416f2b2f2f6cd99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780954218-ga27553/amp-linux-arm64"
      sha256 "d2a90f5c818d0baa929cf11cac25ea444ead13b4d1e89e5022fd8f006f9cde02"
    else
      url "https://static.ampcode.com/cli/0.0.1780954218-ga27553/amp-linux-x64"
      sha256 "2c9ee1e4ba1d1b7ed49c137eaeb3358a4585899ef6288212536bedf2e2fa1468"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
