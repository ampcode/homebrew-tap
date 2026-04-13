class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776054921-g168e20"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776054921-g168e20/amp-darwin-arm64"
      sha256 "77ba550a313f5698f463a06846551cfcda7912336786cf9dff0e2018aac0e47f"
    else
      url "https://static.ampcode.com/cli/0.0.1776054921-g168e20/amp-darwin-x64"
      sha256 "7c972ce8a2d0a1e8c7ff8795268b1c5d8b5622304308a7d96e7b63b292f1c359"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776054921-g168e20/amp-linux-arm64"
      sha256 "06d3451eceecb95fa9ad59ad54ba90b4b76e2e0f32bedbc49341cd73f590cd74"
    else
      url "https://static.ampcode.com/cli/0.0.1776054921-g168e20/amp-linux-x64"
      sha256 "6e86bd7bf5fd06d22414ef0bdcddf74c006c82c069153ddb3d305f1f06ad1fea"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
