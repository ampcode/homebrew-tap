class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774108960-g06d4f5"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774108960-g06d4f5/amp-darwin-arm64"
      sha256 "83fcae34c7b8c9052a6bf821145c618cd06aef237c4d08058dcd946669a258e4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774108960-g06d4f5/amp-darwin-x64"
      sha256 "2f5b71b7937446e968912411122f4a6b3163a57856fd3a744d376a0ae283d861"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774108960-g06d4f5/amp-linux-arm64"
      sha256 "3385ad050392a05f6def5521e6cb44e0a8f3aa21219bd48cb25355a91e28342d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774108960-g06d4f5/amp-linux-x64"
      sha256 "b25d66fd5f2bd76a49f68c0c8d75d1b5e85f6d5ddeb4f673f61dfc02fbec9beb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
