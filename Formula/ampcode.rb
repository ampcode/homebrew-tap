class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787745887-ga80159"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787745887-ga80159/amp-darwin-arm64"
      sha256 "a4bf0bb79c439dbb7e51fa2c9ce57aa41ab4f5d7018d8bbbf407fcc82c103052"
    else
      url "https://static.ampcode.com/cli/0.0.1787745887-ga80159/amp-darwin-x64"
      sha256 "28447f2b05c073bca1e6ec557476030020e8cb605522eb9f8407fd7d4251a5b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787745887-ga80159/amp-linux-arm64"
      sha256 "811e4d92a52c0e337d88cec04b92ffd46997b02225cbf14575e36df18c4915da"
    else
      url "https://static.ampcode.com/cli/0.0.1787745887-ga80159/amp-linux-x64"
      sha256 "153678c465ab51c0d937a0a6f07c02a14efa2d570b7e5a1707a60a2471a7c99c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
