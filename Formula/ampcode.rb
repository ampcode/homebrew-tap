class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769932966-g69075b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769932966-g69075b/amp-darwin-arm64"
      sha256 "903a023afe5510d1a33514cfb65f15a939f9613cb6abe742345214bf7f584e00"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769932966-g69075b/amp-darwin-x64"
      sha256 "f13ded3e2978a31a5ae74fe9b03a2c8c94c18553c23a5d987c7c62ed63311511"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769932966-g69075b/amp-linux-arm64"
      sha256 "0a18461225cfd12501dde32ac558f49e4c07bc858e81e144b50e16194b20919b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769932966-g69075b/amp-linux-x64"
      sha256 "b93d040e17845bab407833a492b33510e80a80978580d2d6741db9385484cf17"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
