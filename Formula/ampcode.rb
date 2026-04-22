class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776834056-gfb3ba0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776834056-gfb3ba0/amp-darwin-arm64"
      sha256 "86e48920c4894a692cfa4ee4a48def156c89ce1dc918e502f8c6d304e450ed59"
    else
      url "https://static.ampcode.com/cli/0.0.1776834056-gfb3ba0/amp-darwin-x64"
      sha256 "043c2eeb6c4345308f8fdde66a08df3dab74d0593813263b9df0f250452a6810"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776834056-gfb3ba0/amp-linux-arm64"
      sha256 "f5c50031c25dd16b471484f3e7ca51bf35ba188e7430fd060629db90d55246ab"
    else
      url "https://static.ampcode.com/cli/0.0.1776834056-gfb3ba0/amp-linux-x64"
      sha256 "e06b1ce90e5eb0de0ca6022a060e40aba60d5edd278aac8a7c00d6552bb8b21e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
