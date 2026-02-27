class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772184433-gdda637"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772184433-gdda637/amp-darwin-arm64"
      sha256 "8abaad58186c57e031c10084377d4cf55bfa2e0f893c21793c69dc000c3eb340"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772184433-gdda637/amp-darwin-x64"
      sha256 "5c726f8b4db7e9b5ef3f7614f148403fe651794e8b100168220591ed6cd300be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772184433-gdda637/amp-linux-arm64"
      sha256 "6de0010cde4900c520529f5a94d667e83512ad422ea3d3ca8c6dda5b68e7153f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772184433-gdda637/amp-linux-x64"
      sha256 "d077c2fec8d97f4063e464989ccfcb4105f5ba0eb2329ef2579887a4ad2e7bec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
