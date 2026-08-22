class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787371742-geb2e5c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787371742-geb2e5c/amp-darwin-arm64"
      sha256 "23c617ff1ee6ade636f0ee69889997d71cc9197fc4e360592d3d029e5fceb021"
    else
      url "https://static.ampcode.com/cli/0.0.1787371742-geb2e5c/amp-darwin-x64"
      sha256 "622ee5d02bf6d4ae7c9e8e598c062f21ebf8807e61dee39c0c219a25ebcfa259"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787371742-geb2e5c/amp-linux-arm64"
      sha256 "fd2ca523ad0d19743ccfe84ce85f00f83f93fa78682b15e4eac35c9b48e8099c"
    else
      url "https://static.ampcode.com/cli/0.0.1787371742-geb2e5c/amp-linux-x64"
      sha256 "4903a31a2ca50e2cd7a1c77df8c7b80cfd6cb984b040e736f4c58c418a8eb329"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
