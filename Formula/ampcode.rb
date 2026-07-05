class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783210749-gf754af"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783210749-gf754af/amp-darwin-arm64"
      sha256 "1e2b2facf09843dec2618158cd25324a23cc69f1322cb5c898bbd1c2985c6215"
    else
      url "https://static.ampcode.com/cli/0.0.1783210749-gf754af/amp-darwin-x64"
      sha256 "764160d7ece44e36f23087461d4c97c626b411fc4d32be15ffa8d14dcf9f5a07"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783210749-gf754af/amp-linux-arm64"
      sha256 "15ac559ff6c8aa880cb29e2658f212681ae514f698ec21139420013dd6279704"
    else
      url "https://static.ampcode.com/cli/0.0.1783210749-gf754af/amp-linux-x64"
      sha256 "b081b5d445dbe78d771a7aeb2a7ccee6b814f81f4541fcb53e8f0a3422e83f5a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
