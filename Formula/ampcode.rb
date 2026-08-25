class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787616161-g9dff10"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787616161-g9dff10/amp-darwin-arm64"
      sha256 "d75ebef9e41ad2dab8d3640900b4b3832e560c9eab596a4be3877f93ad0db874"
    else
      url "https://static.ampcode.com/cli/0.0.1787616161-g9dff10/amp-darwin-x64"
      sha256 "5f712b4c41fb09cacca089211e1fd96c49567b43ee0bb951135f33789d844f64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787616161-g9dff10/amp-linux-arm64"
      sha256 "508f8fdf6b42002d0892e7ee94b4ba1a5c83f110036b1115a3540713a40f5140"
    else
      url "https://static.ampcode.com/cli/0.0.1787616161-g9dff10/amp-linux-x64"
      sha256 "ef88c45644c501040695ce04fafa334d34defa27123acc2bbe34b789ed596356"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
