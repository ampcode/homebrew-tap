class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791931055-gf3e0da"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791931055-gf3e0da/amp-darwin-arm64"
      sha256 "513ab3805eff892e5dfaca8be5eda83134f3876d93d9fb2415d4cdf67b05d01e"
    else
      url "https://static.ampcode.com/cli/0.0.1791931055-gf3e0da/amp-darwin-x64"
      sha256 "d839ce75e44515527961fd2d8f389a14b1f9d228ad69cae7b3be2012d78ab2da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791931055-gf3e0da/amp-linux-arm64"
      sha256 "c83c7e6b628cac17b81190d527ab5e1b7b814636014c13b497b5119768edbb31"
    else
      url "https://static.ampcode.com/cli/0.0.1791931055-gf3e0da/amp-linux-x64"
      sha256 "471269d9d2441fa245c462acb2e209225d67a9c9e3b6ce66ac394e075f916985"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
