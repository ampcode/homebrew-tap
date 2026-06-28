class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782612087-g0f2cc1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782612087-g0f2cc1/amp-darwin-arm64"
      sha256 "5230046f0d837ee48016488b043db16faedc31d92847b133ba4b57376574bf28"
    else
      url "https://static.ampcode.com/cli/0.0.1782612087-g0f2cc1/amp-darwin-x64"
      sha256 "a6d4f8e4b1a83a2277603592ad279b83ccfa94a0de3202eaebc62fc8bd3fb9bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782612087-g0f2cc1/amp-linux-arm64"
      sha256 "e523f917bb85658d357a2798cf0edd98bd332baa2257caced74df767fd372a94"
    else
      url "https://static.ampcode.com/cli/0.0.1782612087-g0f2cc1/amp-linux-x64"
      sha256 "f0c77eae98cc28edcce6b17c05f40fa4ce4606ba1c1571c8ef36a90d27a11a73"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
