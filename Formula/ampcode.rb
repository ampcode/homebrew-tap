class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772531288-g7d96a6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772531288-g7d96a6/amp-darwin-arm64"
      sha256 "bc409ac0f184f7f2e7996488b6c0117fcaa2e7b05731d6ad9e608663820c4526"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772531288-g7d96a6/amp-darwin-x64"
      sha256 "319e07193dac5a307cf770083e95aa9811b4d81fa25cc381dd6352d1a10cb65a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772531288-g7d96a6/amp-linux-arm64"
      sha256 "6e0737cf269befb34380f8847be7416a69c5779837cf4dab9ed90e4e54bdb7e7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772531288-g7d96a6/amp-linux-x64"
      sha256 "2464fad9532f11f4dd860aaa180549ec3aacedc4b7433a54d0e1242ef7b649fd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
