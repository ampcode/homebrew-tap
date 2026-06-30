class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782784604-g15bb41"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782784604-g15bb41/amp-darwin-arm64"
      sha256 "30f346bb9ee2db6ca0c4f40cbc618912a472341f6dea309a32f488fe513afcfa"
    else
      url "https://static.ampcode.com/cli/0.0.1782784604-g15bb41/amp-darwin-x64"
      sha256 "9cac6af63f7d6b5456860c730ef2dad8c47325f5524407d5908358efad941c2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782784604-g15bb41/amp-linux-arm64"
      sha256 "829dcab79f37ea9b219c747ae3e4ebeffc9caecb431b80e597d3f312b3f8529b"
    else
      url "https://static.ampcode.com/cli/0.0.1782784604-g15bb41/amp-linux-x64"
      sha256 "57154b41f6b4362e2e2f3ea95ac33c2e18b19db6de36a79f314f0d07ffe292d5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
