class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777897475-g2324e1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777897475-g2324e1/amp-darwin-arm64"
      sha256 "92a8f6ba316a73552a2fb97faadf1cc58606df7b86bb943dc6289d97b0e2e50f"
    else
      url "https://static.ampcode.com/cli/0.0.1777897475-g2324e1/amp-darwin-x64"
      sha256 "ea7300c20bd5a1491214484584e816333d021c70885bd694cb8b1be710d08fdd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777897475-g2324e1/amp-linux-arm64"
      sha256 "89f1ac9b337c4c8a19916ab144e2991e48edd4c053719439b377cdadc5298428"
    else
      url "https://static.ampcode.com/cli/0.0.1777897475-g2324e1/amp-linux-x64"
      sha256 "144f5f2cedd18d39d09f60a23f526829e98b353f52dfa4da15cdac922b9ad9c5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
