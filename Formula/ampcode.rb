class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778827679-gbb79e1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778827679-gbb79e1/amp-darwin-arm64"
      sha256 "16e84c0f20a98bd8d34c9a223b89029f9fce36be0f8e30d1eea4ac412e9b0a2e"
    else
      url "https://static.ampcode.com/cli/0.0.1778827679-gbb79e1/amp-darwin-x64"
      sha256 "0c7515b148098766ec1d0198dbd739246dcee00d8a6e48f91d2a9f6c2f86b1e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778827679-gbb79e1/amp-linux-arm64"
      sha256 "2cfd36fccf4000c31e4ec2dccca134531da032fc9ed72196e27ce7ffa97527c3"
    else
      url "https://static.ampcode.com/cli/0.0.1778827679-gbb79e1/amp-linux-x64"
      sha256 "56bc760a78b99fc422a7801304bb6ec54423a09c25067ed6fee586131cb00b62"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
