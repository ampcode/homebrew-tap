class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776702135-g7f6b74"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776702135-g7f6b74/amp-darwin-arm64"
      sha256 "997cec528a02639e25c3d6649d05b8e37a5dde586d9af84a2154d7c8ba1b8e81"
    else
      url "https://static.ampcode.com/cli/0.0.1776702135-g7f6b74/amp-darwin-x64"
      sha256 "7f2683626218ed85208c1620284984f197773d6b75c48bf0665b714a03469cc9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776702135-g7f6b74/amp-linux-arm64"
      sha256 "10ca002f02b4127fb91c1104c9368c2560eb74b0e8c419e9b565585a781d4b43"
    else
      url "https://static.ampcode.com/cli/0.0.1776702135-g7f6b74/amp-linux-x64"
      sha256 "80aa8e60c62cd0be59ea77f5d7de49f147d0d99d9a3b7cc86f117b7543aafe64"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
