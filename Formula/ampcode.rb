class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770192470-g6ed19e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770192470-g6ed19e/amp-darwin-arm64"
      sha256 "5e7e76f6f02a7295fe2fa3c94b52b440d4c05da8be91133a6bab74fb15d7897f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770192470-g6ed19e/amp-darwin-x64"
      sha256 "6bd14b42eebd00dc5f470dddf003bff39bfd814d1c5fa690029c0f2d166049c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770192470-g6ed19e/amp-linux-arm64"
      sha256 "c7684dcf3abf3cc0a072e8a9ec52cda3628e22c38fa35f99ba8a7e855d26535e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770192470-g6ed19e/amp-linux-x64"
      sha256 "a1b966d5cabe4f9ffea1d4c76d93fd1ff6e2f7ea1b12cff2f6215fcf5603b9da"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
