class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784376855-g11a52a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784376855-g11a52a/amp-darwin-arm64"
      sha256 "2f1f5bf611c5c9ad9fb476cf24fe87ea160f0503254d2037e359507f16145f0f"
    else
      url "https://static.ampcode.com/cli/0.0.1784376855-g11a52a/amp-darwin-x64"
      sha256 "4ed2badb5648501f6bc444a9b1fbe72dd97ad5bf86cc60bee63a5e0889373aa8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784376855-g11a52a/amp-linux-arm64"
      sha256 "e95952d12d595a1ce310fd5b43ac70f06a2a8a48ea420d7b147933828dec2dbb"
    else
      url "https://static.ampcode.com/cli/0.0.1784376855-g11a52a/amp-linux-x64"
      sha256 "84286056c143010e613f7b5ecc859b0bd43f92ca318fead13db4f1b830b522c4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
