class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780118009-g45d3ab"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780118009-g45d3ab/amp-darwin-arm64"
      sha256 "29a93c2c703b8ac8e54d9d4e39958e45712b129462a6f9f81e5e7d40cd92d375"
    else
      url "https://static.ampcode.com/cli/0.0.1780118009-g45d3ab/amp-darwin-x64"
      sha256 "d91e864bc9e28bbd6d3bd1933adca7b460533fe54e93e5b223f8407d92c96a6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780118009-g45d3ab/amp-linux-arm64"
      sha256 "ff71d09632279bbd42de60b71e1425f7ac9a8d78b8d3738a36eecca9c45054ef"
    else
      url "https://static.ampcode.com/cli/0.0.1780118009-g45d3ab/amp-linux-x64"
      sha256 "37800af28830646aa4fedd71c9331c3c03b021877146688464df4e728e62bc7a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
