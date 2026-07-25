class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784968678-g55e82b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784968678-g55e82b/amp-darwin-arm64"
      sha256 "2612f6e82da29e2eedfec141b593b819cb2d9e8cd409945cb579b014d510155c"
    else
      url "https://static.ampcode.com/cli/0.0.1784968678-g55e82b/amp-darwin-x64"
      sha256 "582fee19d610b47c7337f04d3dac78502095b2cba0699348764d2d061059c856"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784968678-g55e82b/amp-linux-arm64"
      sha256 "0a18c97ca9012235363e296801d2d4b1f77eb4f41c8640718d6886c8ad7ed573"
    else
      url "https://static.ampcode.com/cli/0.0.1784968678-g55e82b/amp-linux-x64"
      sha256 "06c2c5561f6cfdec30de50542b2a63332ab7a5465a652aa7269b49e502160cdb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
