class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775796884-g79426c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775796884-g79426c/amp-darwin-arm64"
      sha256 "0121e16b702f75c33e1a64d41abf038ffc4875fdb59d6ba2260e4d12a112433b"
    else
      url "https://static.ampcode.com/cli/0.0.1775796884-g79426c/amp-darwin-x64"
      sha256 "b3c12a7978a39a8a39f18b6e2ce1c743e064999ea283427e1a4c471f874f5408"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775796884-g79426c/amp-linux-arm64"
      sha256 "469cdd90a0bd3ea65488794628f56c485d37a52b7798c050f640b1d2e06293fe"
    else
      url "https://static.ampcode.com/cli/0.0.1775796884-g79426c/amp-linux-x64"
      sha256 "ba8a17e2fc53c9024a3394d218a7bd5d86296dcfbf82f52406dced21b599d7a9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
