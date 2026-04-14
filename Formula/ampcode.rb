class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776197810-gc5174b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776197810-gc5174b/amp-darwin-arm64"
      sha256 "4d14193db5aea9806cefdf5e43d6bf3b34f61312e1cbf8f0046cfae0c8278c4e"
    else
      url "https://static.ampcode.com/cli/0.0.1776197810-gc5174b/amp-darwin-x64"
      sha256 "d9e539001c760f73c0a8ed963c76bf7b90b4657d5ee61ddb7515f22e849eae52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776197810-gc5174b/amp-linux-arm64"
      sha256 "67313f61c1e4cdc67e4d8c4e188f3c70c29162898d27ebfb74a97dce071c3845"
    else
      url "https://static.ampcode.com/cli/0.0.1776197810-gc5174b/amp-linux-x64"
      sha256 "42af2927b6e00ce1ad848dc3a0c4a0fdfef846289bf99f3a4ba6e65d8f2b1223"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
