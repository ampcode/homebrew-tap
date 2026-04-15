class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776269877-gac06d1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776269877-gac06d1/amp-darwin-arm64"
      sha256 "2f976516b8d2ad75c4352663aa3ed8e787ef1fb981565b6ea77788224f323bd6"
    else
      url "https://static.ampcode.com/cli/0.0.1776269877-gac06d1/amp-darwin-x64"
      sha256 "b09ceeb635561f39850fcbd7216bb6522ced9b2b348638d0f43aea95f60055f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776269877-gac06d1/amp-linux-arm64"
      sha256 "cfe787b433b461db3e4c9ed3d3c634c7d45244c882b9ed5bcd8fba01c4d87111"
    else
      url "https://static.ampcode.com/cli/0.0.1776269877-gac06d1/amp-linux-x64"
      sha256 "05eaec6a9099acd1600311e5d25d1b744b65756b2f98e3c3677d55ba88cff546"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
