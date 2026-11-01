class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793563244-geb1c10"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793563244-geb1c10/amp-darwin-arm64"
      sha256 "69d3648f78fd233aa1688fa7238cd376dacfc33b957e9ddfcc0cd9e4a5f34ee1"
    else
      url "https://static.ampcode.com/cli/0.0.1793563244-geb1c10/amp-darwin-x64"
      sha256 "00c2e29951da613c60278bb44c9a151cbc86ea010010f24c62bfd10a6eb513e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793563244-geb1c10/amp-linux-arm64"
      sha256 "49398d9c0e06a3d444825adf069e7cbaa1f3e2795db68b32ebf8b854894b5a6a"
    else
      url "https://static.ampcode.com/cli/0.0.1793563244-geb1c10/amp-linux-x64"
      sha256 "132d098ac05485735c678391d401ae9764e04e9e453d27555dc2fa78d6ca9250"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
