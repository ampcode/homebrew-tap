class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788955241-g4bb3be"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788955241-g4bb3be/amp-darwin-arm64"
      sha256 "68e0ae846ad96061a626c428fb6108433a282020aef1eada57d10fccbdb8740d"
    else
      url "https://static.ampcode.com/cli/0.0.1788955241-g4bb3be/amp-darwin-x64"
      sha256 "ca6f49f6e361a4cebd102b0c7d3543d516dba2c063f36e903cff3d90a4d02cf1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788955241-g4bb3be/amp-linux-arm64"
      sha256 "937ad65ca0fcacc24229cb1c8841af46bcce77b15b308d2785e8065bd3a02184"
    else
      url "https://static.ampcode.com/cli/0.0.1788955241-g4bb3be/amp-linux-x64"
      sha256 "04287f47194051555e0d09a14d0ca9d70147e4416aa2cbd0b4d727da3fd4383e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
