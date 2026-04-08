class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775636421-g1ea6b1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775636421-g1ea6b1/amp-darwin-arm64"
      sha256 "c8e3028cf34ca553be4a9feb324cbeac67ce09877b350824917249974fc51b99"
    else
      url "https://static.ampcode.com/cli/0.0.1775636421-g1ea6b1/amp-darwin-x64"
      sha256 "2210f63eaf371201777c4d3cf58aa9e85e37eeeff6d2c7dfe6ce78860049e89b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775636421-g1ea6b1/amp-linux-arm64"
      sha256 "748e53c9d6fd769e0aa466693adc08899829138cf9e52fb96b13c44140ff2d74"
    else
      url "https://static.ampcode.com/cli/0.0.1775636421-g1ea6b1/amp-linux-x64"
      sha256 "303ffdfbb7ee2c1ca41c79d1383f58b86a6a7ca3fc10cee02c9932b8c242cb2f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
