class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770682056-gad6470"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770682056-gad6470/amp-darwin-arm64"
      sha256 "5865aa5ffec35d0a6648f0634bf772c333fbc2d2adc77bd54b1626f2c2470174"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770682056-gad6470/amp-darwin-x64"
      sha256 "ce7b642b44341f7a7921b651c391b05c5f05694b684dc00965eff3cdbc9e6183"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770682056-gad6470/amp-linux-arm64"
      sha256 "d3e520f55c40174597d5c002cbbe9d26a148e229fe7a7a9a5b925bd98d51cf6b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770682056-gad6470/amp-linux-x64"
      sha256 "e23056d814f4e51864d615f6dfc3570310014df65478945f1681639057a8ac91"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
