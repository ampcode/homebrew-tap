class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783785389-g0da70d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783785389-g0da70d/amp-darwin-arm64"
      sha256 "6f6c4f2a0810870c08bd1ce37aac5ac0fde602bda0a03db5568a394e7fc52944"
    else
      url "https://static.ampcode.com/cli/0.0.1783785389-g0da70d/amp-darwin-x64"
      sha256 "3c8a0e1e2fbf40ca81ade2dc7c3a2e30330c85c77e62677e6411e73333a0e3b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783785389-g0da70d/amp-linux-arm64"
      sha256 "24b47f1157314858a5db7daa969ad197275b41c71264d424a4bf49a65c47fa49"
    else
      url "https://static.ampcode.com/cli/0.0.1783785389-g0da70d/amp-linux-x64"
      sha256 "0f403c568adaddd440b95fd2954f6d75fedd059fd219101b030517d71a6f4639"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
