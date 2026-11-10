class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794326444-g2deeb3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794326444-g2deeb3/amp-darwin-arm64"
      sha256 "84243b60ae949790ab909f7121976c6329529db430212eec14320b6b4e44fdd0"
    else
      url "https://static.ampcode.com/cli/0.0.1794326444-g2deeb3/amp-darwin-x64"
      sha256 "aae3ad13c57809de8c73c1448a86325da155f71f3b36b2a40fb709202548bc9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794326444-g2deeb3/amp-linux-arm64"
      sha256 "cf738f0d1907424737358a123730180b01e30ee0c36386c28eb4ddf93a07cc6e"
    else
      url "https://static.ampcode.com/cli/0.0.1794326444-g2deeb3/amp-linux-x64"
      sha256 "b218b6e5775369f64ee23f50d8e25c0ae19b0b02587ffc2f046d167b8ee944b7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
