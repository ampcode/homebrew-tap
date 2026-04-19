class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776629196-g3ad600"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776629196-g3ad600/amp-darwin-arm64"
      sha256 "da7ea7444325440c1011cabb276bbf91be3ae0ec51364cbf6ae929263dc73fe5"
    else
      url "https://static.ampcode.com/cli/0.0.1776629196-g3ad600/amp-darwin-x64"
      sha256 "e5733614f78e28804e0fcedbcc2c79f59fd23c1cee8346c42607bc0efaeceb6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776629196-g3ad600/amp-linux-arm64"
      sha256 "053cfc18294d73e931c77b0ce74ea5b27f869e9c1be0d3e8745e39c18b3894de"
    else
      url "https://static.ampcode.com/cli/0.0.1776629196-g3ad600/amp-linux-x64"
      sha256 "0aefa46b92ff072438e14537d351f25bfe30e5eb0fe52c2c191117b84660e486"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
