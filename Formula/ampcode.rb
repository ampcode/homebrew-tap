class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788033637-g4c86ff"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788033637-g4c86ff/amp-darwin-arm64"
      sha256 "2a6601813d0499b647c44c2cc0368e08c4d236d2ff5bb3dacbdae666321ff174"
    else
      url "https://static.ampcode.com/cli/0.0.1788033637-g4c86ff/amp-darwin-x64"
      sha256 "a8d011ab3723cfc7f57b638eaa93f16020a8e18d10b40b0703bfceb3fd5f608d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788033637-g4c86ff/amp-linux-arm64"
      sha256 "7cb7235ba4c5b5732ee7aa497693255be3e0db93cc0719b2b3e54f5479690623"
    else
      url "https://static.ampcode.com/cli/0.0.1788033637-g4c86ff/amp-linux-x64"
      sha256 "5f69ed4a854b35181dc84ecfea2f1668dce45e8d1558fc3eb5bddd91650dcb6c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
