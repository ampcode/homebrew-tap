class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778490053-g69501e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778490053-g69501e/amp-darwin-arm64"
      sha256 "215b22be4df1944f2677824fdcf0d028fc59456f6abea5d94ad28613110a0766"
    else
      url "https://static.ampcode.com/cli/0.0.1778490053-g69501e/amp-darwin-x64"
      sha256 "29b19001a63cc640326001d6b856e93470efcf9dd26f68d0d23103320c32f30f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778490053-g69501e/amp-linux-arm64"
      sha256 "b623823c4579934147b5e3b9f3811b5565c09e2c87a041c2b535532bb76e1079"
    else
      url "https://static.ampcode.com/cli/0.0.1778490053-g69501e/amp-linux-x64"
      sha256 "fcd6f746680011102d97a8935e4524bf147b98abf630a1d342a7f50649fecb9d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
