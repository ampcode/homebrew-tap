class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782165208-g0d7177"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782165208-g0d7177/amp-darwin-arm64"
      sha256 "42d103b27172cef41798b8dcca143d2eed763ebb3bdd8b0cedda88816bbc61da"
    else
      url "https://static.ampcode.com/cli/0.0.1782165208-g0d7177/amp-darwin-x64"
      sha256 "5c100adf0589ca8e2ba07a83018faf446b7130876a102d5a7292971c8c20e7ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782165208-g0d7177/amp-linux-arm64"
      sha256 "5f9200afd56f961ba07439bfbe808b0196a6f58d4545cd6a764488bc9f69d715"
    else
      url "https://static.ampcode.com/cli/0.0.1782165208-g0d7177/amp-linux-x64"
      sha256 "9a5672234bbc1303f6d3fe85bda8a7e58bc97fccbfd5c1325d54c75b91938a4a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
