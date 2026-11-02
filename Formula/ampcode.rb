class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793577666-g2e4e3d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793577666-g2e4e3d/amp-darwin-arm64"
      sha256 "c6871e19d391fae9bbaca213d0062fa4eadd200b0b9bea80f56954ef89daf4bd"
    else
      url "https://static.ampcode.com/cli/0.0.1793577666-g2e4e3d/amp-darwin-x64"
      sha256 "2023c3fdf7005e2b4f32f8c0d05af80a6433789e212be79b2d590e46b2e2af07"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793577666-g2e4e3d/amp-linux-arm64"
      sha256 "34afcef053375df62d31495b9557a94b748cc816960298f45d89cacbd0cd6a04"
    else
      url "https://static.ampcode.com/cli/0.0.1793577666-g2e4e3d/amp-linux-x64"
      sha256 "684305da906e2d04d721e7bdc461588d5a313ba0f00339363c472e0af664e0a6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
