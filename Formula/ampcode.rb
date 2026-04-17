class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776441558-g1706e0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776441558-g1706e0/amp-darwin-arm64"
      sha256 "65e4f868c40cf106f0337cc87e41f815b7eb73368a8c94b73410e34b91c5a3f2"
    else
      url "https://static.ampcode.com/cli/0.0.1776441558-g1706e0/amp-darwin-x64"
      sha256 "132425d64ee40958d8eeff4ad425c94e50a04501b9caafc30b99d96fba9164fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776441558-g1706e0/amp-linux-arm64"
      sha256 "408e46593510751ca5298edb4285ef6dbd1a75f36603abe96c891a1bccc2d6df"
    else
      url "https://static.ampcode.com/cli/0.0.1776441558-g1706e0/amp-linux-x64"
      sha256 "e64d42301e2a34358877cbc46fc825b69bb34b6678619f3fbd0d432ec9f68a0d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
