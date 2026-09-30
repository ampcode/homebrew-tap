class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790778300-g865493"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790778300-g865493/amp-darwin-arm64"
      sha256 "5b6c39c12983be4b03751da594967cafbf4d3f4ab3567080de56c402a62aff32"
    else
      url "https://static.ampcode.com/cli/0.0.1790778300-g865493/amp-darwin-x64"
      sha256 "ddc1f54289c8565b5c48c33f0c290ed9c6e63756157e51aa218ac146b37d4ba5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790778300-g865493/amp-linux-arm64"
      sha256 "5af893a8f18a62b40786c7f246c2cdbb95cb9089c8a146d803a089874ab77a48"
    else
      url "https://static.ampcode.com/cli/0.0.1790778300-g865493/amp-linux-x64"
      sha256 "c3ca3b0969b5be1d461c5b558fb3e429a39e37c60fe4786d50eac8484ac88800"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
