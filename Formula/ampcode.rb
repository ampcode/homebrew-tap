class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770888159-gfa67aa"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770888159-gfa67aa/amp-darwin-arm64"
      sha256 "d31a29ea6d67b3d9af58326841b8889450708a2410f626a727e43dca35ccc0af"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770888159-gfa67aa/amp-darwin-x64"
      sha256 "107f73df05013dc77520352fa3b16e935f927d08dc30075faf8feaf1064a17c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770888159-gfa67aa/amp-linux-arm64"
      sha256 "897268288d1a72f5e5e504ecd061f2dd16b28039592e070a7dbdf6074f68f1cf"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770888159-gfa67aa/amp-linux-x64"
      sha256 "a910b5aa2b5bc948a303d94141c509feaf3d3e95d5a5ebc7960646a7e0b31ff9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
