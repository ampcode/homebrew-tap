class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792872041-gb83e0b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792872041-gb83e0b/amp-darwin-arm64"
      sha256 "537a7dcb13956ea2b5219f6dca7e2f07c27bc2aec5672ca1b0baf654944101b7"
    else
      url "https://static.ampcode.com/cli/0.0.1792872041-gb83e0b/amp-darwin-x64"
      sha256 "12a9e3e51d3f511030abd88089a612cf74037aa5383a3481fda3c78918c442c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792872041-gb83e0b/amp-linux-arm64"
      sha256 "c8bbcb56dfb85bb4fc0ea77dfd696c2f095ebb7c279437e3786e443f9831f6fa"
    else
      url "https://static.ampcode.com/cli/0.0.1792872041-gb83e0b/amp-linux-x64"
      sha256 "7f100a5f8654de73c13d7a8c283fc4b41deefd1163de172ef0e163bc92dce13c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
