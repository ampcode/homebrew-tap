class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794873665-g35bc76"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794873665-g35bc76/amp-darwin-arm64"
      sha256 "a32e4c49414ec2267e1638d3d6a1101f6f3e95ce38d3957763e9b46c2fd6b1b2"
    else
      url "https://static.ampcode.com/cli/0.0.1794873665-g35bc76/amp-darwin-x64"
      sha256 "fa8bc0a599827cf58743fe5820bf4ef405a469d4d070088250ee48d252cb4fdd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794873665-g35bc76/amp-linux-arm64"
      sha256 "12924f9ce644b0a43760bc39c87518d3072f36b3bdedc9d9833c80c534771dad"
    else
      url "https://static.ampcode.com/cli/0.0.1794873665-g35bc76/amp-linux-x64"
      sha256 "0a3daef4d14a5633373f10ac69fefbe2c86eb8b84da4e64edb8127e4171f1759"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
