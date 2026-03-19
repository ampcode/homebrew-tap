class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773921912-g1d4113"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773921912-g1d4113/amp-darwin-arm64"
      sha256 "9b36ef63a37ea0e00387164fdb8a437b546a8777f09516c556d0891ed58911c8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773921912-g1d4113/amp-darwin-x64"
      sha256 "d2d948e7a633b23a80b698adebe430554ebe477c0a8ff6e81aee2f1ee429039e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773921912-g1d4113/amp-linux-arm64"
      sha256 "2ababa4c3fb8856bc99e87be2fc3b307a9b8221c6583368b58eebe5c683e8e2f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773921912-g1d4113/amp-linux-x64"
      sha256 "981618cf9a834858b7ea62ab26fd2e70e962d53d32e2fdcd7e483953b045ac03"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
