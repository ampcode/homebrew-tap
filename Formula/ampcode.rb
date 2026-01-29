class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769719558-g98dc3a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769719558-g98dc3a/amp-darwin-arm64"
      sha256 "0ee28582738a58be3d2ce6ac6f59fad5bdc0566ba47726986a14802129fee638"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769719558-g98dc3a/amp-darwin-x64"
      sha256 "76e2ecf1f7d55d395fe8c2a7582440682ecddf150a9edf804718c2362cfe9b95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769719558-g98dc3a/amp-linux-arm64"
      sha256 "592294356a7c1d13c57585f06e79afa531a532e6c3ae4a3adb1be753f71e02ca"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769719558-g98dc3a/amp-linux-x64"
      sha256 "730bd62fcc73892319378744909b43662151f7f767bb4c0212e074ff61ac6b7c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
