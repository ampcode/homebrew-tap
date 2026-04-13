class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776097392-g9fd7e8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776097392-g9fd7e8/amp-darwin-arm64"
      sha256 "6886ac38731186f44e3968479bff53d114c1350c7362c9b7297deaa16c96b06f"
    else
      url "https://static.ampcode.com/cli/0.0.1776097392-g9fd7e8/amp-darwin-x64"
      sha256 "82c01fa86e972e3c234b3866fa6a73c16c49d43d6c6a9f9c450ce0ab577f95af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776097392-g9fd7e8/amp-linux-arm64"
      sha256 "ecfec91c10617c8603962a69849de7060bae68383b8f3d56810992bd6f5a8668"
    else
      url "https://static.ampcode.com/cli/0.0.1776097392-g9fd7e8/amp-linux-x64"
      sha256 "3fc642bc0e067b973e1daeb40a57162329a416756b7a78e45ca500b436c4496d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
