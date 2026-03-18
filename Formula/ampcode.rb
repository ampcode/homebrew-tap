class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773835286-g08fd18"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773835286-g08fd18/amp-darwin-arm64"
      sha256 "b494f9e6d44e7c12b87d829af0d37e05dc883b9c9d2757ac8aeb5d23ebe26aac"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773835286-g08fd18/amp-darwin-x64"
      sha256 "914f2dbc78b098b8b96f316708f576ae7082cf0437c26cf62433a3115db3a74b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773835286-g08fd18/amp-linux-arm64"
      sha256 "dcf3d2d13507ac4fc58129000fb57d59a57ae20681cfefe261583e8e5b46fa12"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773835286-g08fd18/amp-linux-x64"
      sha256 "94cda95fe4cfa796947114ded9c241b8e8a10bae0770c95f096d36d6bd2d718b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
