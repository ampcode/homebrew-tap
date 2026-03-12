class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773302873-g092245"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773302873-g092245/amp-darwin-arm64"
      sha256 "8ff19b3ce79c2b6437ff83a4e0919a89b349aac78b31fa526600183655b7936d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773302873-g092245/amp-darwin-x64"
      sha256 "4649580f4fdb2842392d558adb94f274c9f27bb632e47d622cfb9033b8a32c18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773302873-g092245/amp-linux-arm64"
      sha256 "7ccb6d92cb7911822b0a982e5266ac3363b777f8841e266d7ac0207a1576ed13"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773302873-g092245/amp-linux-x64"
      sha256 "69cad6369eb9fa5779a3871ae874da07956a133500395656a3fee0b8688ac37f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
