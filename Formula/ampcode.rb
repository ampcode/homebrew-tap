class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771599414-g156025"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771599414-g156025/amp-darwin-arm64"
      sha256 "2e9497009b58fd83a05f8ae1bd8cfb77a083034f4d263dab4ab639ed39a5025a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771599414-g156025/amp-darwin-x64"
      sha256 "9d616271829f4a18902d543d0763f33ce6a420cf07f8b54fe5e5911984ebcf6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771599414-g156025/amp-linux-arm64"
      sha256 "70393b1c8fb9367d42ded973323bd3da5592d27d63782ddb7f41489c3b9eef97"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771599414-g156025/amp-linux-x64"
      sha256 "f5a7605cf019328eed6af366dc1a0319b2336420e98aaa7f75095a568222c0e1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
