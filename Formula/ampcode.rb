class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776174316-gc2dbfe"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776174316-gc2dbfe/amp-darwin-arm64"
      sha256 "e532852fd12f53e89ee4fc5ab4326b6536e20053e27221786e78d8a24a612fb0"
    else
      url "https://static.ampcode.com/cli/0.0.1776174316-gc2dbfe/amp-darwin-x64"
      sha256 "e260e266f03f5c0ff978b50f1f6962d2e1d6b3e04bed4c3ddb88fca50de5b076"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776174316-gc2dbfe/amp-linux-arm64"
      sha256 "7a1e800566d9246329d0a2a69567f4e725300b931137172c43199b4d640228dd"
    else
      url "https://static.ampcode.com/cli/0.0.1776174316-gc2dbfe/amp-linux-x64"
      sha256 "d5f2aede8cac4ca657543a4ad1eefdaaf4cc25057c85c2e931cc94a898a87210"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
