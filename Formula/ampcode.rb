class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793782541-gd81f0f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793782541-gd81f0f/amp-darwin-arm64"
      sha256 "5727911aa8f76ea9e576eac554548e827bda0944fa3936dfac22bbdcf28b9334"
    else
      url "https://static.ampcode.com/cli/0.0.1793782541-gd81f0f/amp-darwin-x64"
      sha256 "e4f3de3b39630da1fe108b46a2fb6cfe39f90a2e8a5bda6e71db485a6823d8bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793782541-gd81f0f/amp-linux-arm64"
      sha256 "2efd95d79e0cf006450082bb5c5659461dda6dd0dbf650c9475b2aa713651e47"
    else
      url "https://static.ampcode.com/cli/0.0.1793782541-gd81f0f/amp-linux-x64"
      sha256 "4af8ab2d983396766bc3d3d6e5e38321e0b26a35284e3a1b869c1da27cdfcb66"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
