class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773241673-g25170c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773241673-g25170c/amp-darwin-arm64"
      sha256 "0b9135bde46c9fcaf0a8dac7109f60ed9647cb99142e3dbcd65f867ac5eb2f65"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773241673-g25170c/amp-darwin-x64"
      sha256 "23e36670b827449ad2d2291b0727da1da952a301b9b53fc7287b2d73718f7908"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773241673-g25170c/amp-linux-arm64"
      sha256 "aff751ac5a6eeecc3d6b6f69c16bd478b17163038b46a24a6d7894b2e6aae40a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773241673-g25170c/amp-linux-x64"
      sha256 "34ae6ba74b9336737ffb08048055f0da206bc2b7eeedb85c8c4a6552beb21c30"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
