class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776314998-gabb1b0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776314998-gabb1b0/amp-darwin-arm64"
      sha256 "b309707dd3cd7b4810d713e92b23399b95e50dbdc4bf2856858973223757d3ec"
    else
      url "https://static.ampcode.com/cli/0.0.1776314998-gabb1b0/amp-darwin-x64"
      sha256 "6532b9208e85a911e76a2a41d683e8c9e0dd6bb1e6c789e920768f7d0ffe2f9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776314998-gabb1b0/amp-linux-arm64"
      sha256 "3a004f633dbc959686e8b0b8d8c9732effafd856ff5391c0d792227b7ad897fd"
    else
      url "https://static.ampcode.com/cli/0.0.1776314998-gabb1b0/amp-linux-x64"
      sha256 "17153aaa89f4f5ddb12ad0e41463f027dda93b6d55614335ecdbb3064d6af52a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
