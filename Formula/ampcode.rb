class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776528468-g4b2f71"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776528468-g4b2f71/amp-darwin-arm64"
      sha256 "2c07d7331abc0958493273e155cf3f7d695ae2e28e1cd39e46eec87b46bfb03f"
    else
      url "https://static.ampcode.com/cli/0.0.1776528468-g4b2f71/amp-darwin-x64"
      sha256 "b9678cdaa11d772e7347818d5b7edc29497a8343d0247befe4850879bd2b2e6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776528468-g4b2f71/amp-linux-arm64"
      sha256 "3d19bd1a56aab5391d6a6a312157d598102b30c8a7b78406a139cb54c5974f70"
    else
      url "https://static.ampcode.com/cli/0.0.1776528468-g4b2f71/amp-linux-x64"
      sha256 "a749ab54b143883162ff7262feef53cb57c03c91d4ec407ea8b91442fe5cc22a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
