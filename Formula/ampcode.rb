class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770376691-g417057"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770376691-g417057/amp-darwin-arm64"
      sha256 "48b8ebde5c97f7bbe3a0c64583e8fbfd75d0ff6ac3c7e085da03e8dea82a1069"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770376691-g417057/amp-darwin-x64"
      sha256 "1103c32e5abab4cb5b80ba86b9c3d0cd585e3626802103bb1494d1e1829e8f05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770376691-g417057/amp-linux-arm64"
      sha256 "0a9c80d950ed720308dfa43702292b841ad1f4669909c0a6f4241b21437df1e6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770376691-g417057/amp-linux-x64"
      sha256 "18f88a8799de50c384fa9397462bbfb5937b75888c0dc14328850b548c5ce741"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
