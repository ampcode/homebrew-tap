class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772201356-g024e62"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772201356-g024e62/amp-darwin-arm64"
      sha256 "574dcbe9f397f8699dbb990c280bb6c03b1c2ee68b49ed3b2f0fe1e8b8c1eb61"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772201356-g024e62/amp-darwin-x64"
      sha256 "8d2f0520bbebaa276baf201c3d018e4bb64600c13780ce0228a0614a06904d81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772201356-g024e62/amp-linux-arm64"
      sha256 "cf69bc7e24377fcb28e044260ab52c05b5167c10c4bd4bd0435308509c76e99c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772201356-g024e62/amp-linux-x64"
      sha256 "c52dd0b8862ea7db4b32164c37f5694286151788e66eb65c81f9d0929131fbf0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
