class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791921643-g5489c1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791921643-g5489c1/amp-darwin-arm64"
      sha256 "fa8a1cbf9bfba01abd36b1246ff2553fdbe655316312202a9c6f10087c87fdd5"
    else
      url "https://static.ampcode.com/cli/0.0.1791921643-g5489c1/amp-darwin-x64"
      sha256 "33dcab4216b1a4483312fee8ed3c6b478cd9d83c75db92823d4390483526db39"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791921643-g5489c1/amp-linux-arm64"
      sha256 "1317d74e6a991a8760343ed710214755f10890357fed023493c23bc135fce4e6"
    else
      url "https://static.ampcode.com/cli/0.0.1791921643-g5489c1/amp-linux-x64"
      sha256 "0569bb1c27f85e00a8cd811654589270cf4fa5901e7a7017ebd5f76a9464c0c0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
