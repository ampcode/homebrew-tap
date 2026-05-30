class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780143526-gc351d5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780143526-gc351d5/amp-darwin-arm64"
      sha256 "003bccc0f1fae329f2bb238ae70f33b8e8a57d66a5191efb851b4de56926fd31"
    else
      url "https://static.ampcode.com/cli/0.0.1780143526-gc351d5/amp-darwin-x64"
      sha256 "f49601a6989602fc8df54b6191004769af22c38d0e2f9bbc5064dfc9f9b770c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780143526-gc351d5/amp-linux-arm64"
      sha256 "25588887ef5b14849b7995e2103d9f0a3edfd43deb810ed1f9d7197eb0354605"
    else
      url "https://static.ampcode.com/cli/0.0.1780143526-gc351d5/amp-linux-x64"
      sha256 "ccd3bbc7999b15640baca4f30673130f950cf62a22a79651219a9393e9cacec3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
