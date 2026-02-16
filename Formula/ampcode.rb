class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771200218-gf0819d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771200218-gf0819d/amp-darwin-arm64"
      sha256 "8926bbd3d4ceaa748c7a46b7f54830cfd6592b5f73cf8562b6d16b2b290ac29e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771200218-gf0819d/amp-darwin-x64"
      sha256 "0ba4f6346d817d5f320e70b738928dbab2345a95ac54fa66ef7fb82f39a6998b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771200218-gf0819d/amp-linux-arm64"
      sha256 "3a5bbf17d15744a80004b3211c841a345d3b225e25b00c272bb136ec00a75364"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771200218-gf0819d/amp-linux-x64"
      sha256 "32df96970092eacd45244a63120d9861d0ea878f069ad2780b882eb86fe53810"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
