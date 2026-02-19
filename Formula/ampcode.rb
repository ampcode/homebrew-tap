class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771531523-gfc118c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771531523-gfc118c/amp-darwin-arm64"
      sha256 "c8b98e0ecd7b35b1cfb85fc795807f00a7a8740b8c1d742b9e91270540dc7774"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771531523-gfc118c/amp-darwin-x64"
      sha256 "cf49f81613ff782a452cba0d5327e5f470b0058f4bc0eb77a4318640f0fb7fc3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771531523-gfc118c/amp-linux-arm64"
      sha256 "44bdf0c42743367f09b13ab97588b212098c3d8ecd9941ab5e1116b0946013f8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771531523-gfc118c/amp-linux-x64"
      sha256 "bc91d2d8f740e587d9337a2fba9c3dcf1395c7524fbd47543b5fed5a63aad2a9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
