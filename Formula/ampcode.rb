class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775347524-ga6c742"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775347524-ga6c742/amp-darwin-arm64"
      sha256 "0968553c0d0d9d050742b175d74f89ff1ea61e042a8d8a3de5334fb49048d63d"
    else
      url "https://static.ampcode.com/cli/0.0.1775347524-ga6c742/amp-darwin-x64"
      sha256 "e9d96b24d39471c2b37ec9cc659ec99267d7fe2c672013992e3e3d9437613e58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775347524-ga6c742/amp-linux-arm64"
      sha256 "cf686c98e795498d4c852f901f7d82db9330d87f3381e7a14907ca64b5f500cc"
    else
      url "https://static.ampcode.com/cli/0.0.1775347524-ga6c742/amp-linux-x64"
      sha256 "e319c688318ffe3053f69cdb008ab274dcb63760a1fe8c8919ad79892d79b228"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
