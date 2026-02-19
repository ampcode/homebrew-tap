class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771503927-g016389"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771503927-g016389/amp-darwin-arm64"
      sha256 "883e16797ff3ef6c1f471c8753ba4da4b4714eeb02e6917504df42271b3681d5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771503927-g016389/amp-darwin-x64"
      sha256 "0f5fd043aa58aba1628f7af553fe2ce6ea07e4ba85d34534465d0c939f73f1e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771503927-g016389/amp-linux-arm64"
      sha256 "cb0dd4a84d3701b4501f8ff75844f9baa232623c7597c544936023b6733d4d62"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771503927-g016389/amp-linux-x64"
      sha256 "15884610ae05f5f5d9b3b9acee41d988ab15bfe08abaa6fc8594a2b9d4bcd0d9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
