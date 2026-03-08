class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772985717-gd7a1f5"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772985717-gd7a1f5/amp-darwin-arm64"
      sha256 "ab75fcdea3dd5727811ac2ae28a453b806d30c7eb5ebc502e3696364789f31b9"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772985717-gd7a1f5/amp-darwin-x64"
      sha256 "49052d16deb4ff9fcd6910b4fdbabb26e8179ad128d03bad6a91e2e4fed74339"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772985717-gd7a1f5/amp-linux-arm64"
      sha256 "a3b5fb435bea7f4b9c07b29dcec90d821a3c407ae4110a356a1d940b39d85fbb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772985717-gd7a1f5/amp-linux-x64"
      sha256 "ee64743937e1db252b48dd5747a6753d9e4abe22268dd1865ba8c716e93b3bee"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
