class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771329962-g693325"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771329962-g693325/amp-darwin-arm64"
      sha256 "a7cdc4540b01dd154f072d5e70d1091a00ceb19454f365f317e91286aa21b5c6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771329962-g693325/amp-darwin-x64"
      sha256 "8ad773fed856f6b6bc1fb6180c0285c8c59c78211e6019a418bccaf08d7e6d0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771329962-g693325/amp-linux-arm64"
      sha256 "192112828c8bd17063c0cc72a85362813dfc4f8822426c91864f5d71fdb2c03e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771329962-g693325/amp-linux-x64"
      sha256 "dd33dde15b12a9794257627b37c9c38be98fac274ef3f9858b570e183e19b355"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
