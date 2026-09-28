class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790580501-g2333a9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790580501-g2333a9/amp-darwin-arm64"
      sha256 "9a2d08516d348d1278421e4a25259280a3b6d47168a7f9bd268caa489d736521"
    else
      url "https://static.ampcode.com/cli/0.0.1790580501-g2333a9/amp-darwin-x64"
      sha256 "1e7a4b01ec6c6147aec565215e90c395fea580ef7bf9ebc01400314dc9c007e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790580501-g2333a9/amp-linux-arm64"
      sha256 "7f6f8344c8c114611eee129b41c42a64d2596e75915bf46a58d5c0d88c2455e0"
    else
      url "https://static.ampcode.com/cli/0.0.1790580501-g2333a9/amp-linux-x64"
      sha256 "6c2beb581735592e17c42a3867bc9015405db221e1d93c3b0daf40bd19bb40cb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
