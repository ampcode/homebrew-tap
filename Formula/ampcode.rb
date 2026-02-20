class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771561861-gb93d97"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771561861-gb93d97/amp-darwin-arm64"
      sha256 "88c5cc0cc64349d5250060e8787ef0d24b087753058ef64bf16af80a12b8ed2b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771561861-gb93d97/amp-darwin-x64"
      sha256 "d9fdb8153285d6688d73436acd64852980d9ad0999c42a02478d0574919f2e8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771561861-gb93d97/amp-linux-arm64"
      sha256 "295429f94ab5a0da8675feeccb567927c6533087fd65300036dad6d2dd54d3bf"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771561861-gb93d97/amp-linux-x64"
      sha256 "4c645da29f24290b6fe77d57a28b9b898988e1e40f16b54644edcdaca0fd30fb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
