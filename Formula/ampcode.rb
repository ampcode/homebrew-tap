class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789819237-ge34793"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789819237-ge34793/amp-darwin-arm64"
      sha256 "9563bf1be834d28910ec0b99412cbcbe3d00e0c7c5d9cf126a94b39492e25fc0"
    else
      url "https://static.ampcode.com/cli/0.0.1789819237-ge34793/amp-darwin-x64"
      sha256 "5aa64e215cbfb4c9613835b9212cc0ddddf8191e8fdbcd5d0e3ea3d466a91a56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789819237-ge34793/amp-linux-arm64"
      sha256 "cec952962a0e37d8c82993d222b05da14384e170498610c4bfd6be83708fa070"
    else
      url "https://static.ampcode.com/cli/0.0.1789819237-ge34793/amp-linux-x64"
      sha256 "556131ba4d8f631b8815ad455b56b80af2c6ee7479819c57aca575e9fd87eb42"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
