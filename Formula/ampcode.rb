class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792094445-g3475f5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792094445-g3475f5/amp-darwin-arm64"
      sha256 "ad66d77914da4256f005eed20df19f1931001d9f8a58aef006ffd70ac927ab69"
    else
      url "https://static.ampcode.com/cli/0.0.1792094445-g3475f5/amp-darwin-x64"
      sha256 "aac0866072de402e986f05383320b29e90152375cc1914c22178856ea0e8da99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792094445-g3475f5/amp-linux-arm64"
      sha256 "c6dfa2a887bdb34035861668963e79ad97c16e255103859c8f007bd16b2c68d5"
    else
      url "https://static.ampcode.com/cli/0.0.1792094445-g3475f5/amp-linux-x64"
      sha256 "789157cf9ee1558c3fcc396bf4a2c5b6a1331eb4441c90f101ee4ede5a56c226"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
