class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781489535-g115f50"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781489535-g115f50/amp-darwin-arm64"
      sha256 "f69d5de3ec8bc02c0c198ee139e7f7b0ad7bab34852b5954162f73fe1f367e26"
    else
      url "https://static.ampcode.com/cli/0.0.1781489535-g115f50/amp-darwin-x64"
      sha256 "fcaea549619f9c92de6bca35193aefb0b8f492579513aa480492d2b226b83858"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781489535-g115f50/amp-linux-arm64"
      sha256 "b52a9b82cff13315be2ae13b05aee739bc7f5383bce9f078b907bcf37da1f345"
    else
      url "https://static.ampcode.com/cli/0.0.1781489535-g115f50/amp-linux-x64"
      sha256 "f28e70f9c326ac4686b54602732efead695ea6f1fe79014f8489beea2c419576"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
