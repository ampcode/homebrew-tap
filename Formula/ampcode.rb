class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787203428-g9220f3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787203428-g9220f3/amp-darwin-arm64"
      sha256 "f8e86169e7225f16eab36189ec47360202d0c22250fdd19d42eabc4559ca0f9b"
    else
      url "https://static.ampcode.com/cli/0.0.1787203428-g9220f3/amp-darwin-x64"
      sha256 "1e7e225b5a71475abbb33db5b792ded51f75d298b0b3d29ff4466216eda74860"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787203428-g9220f3/amp-linux-arm64"
      sha256 "4ee7a8cc1c16b885cda37697d4e7c0d2614cb53838ae8cc19741657b14d70241"
    else
      url "https://static.ampcode.com/cli/0.0.1787203428-g9220f3/amp-linux-x64"
      sha256 "da5129bde5e1a7ea081a5d0c83b255ebc762a08103e1622180f67ee307d27f09"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
