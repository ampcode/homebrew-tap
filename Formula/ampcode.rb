class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786796448-gaa1966"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786796448-gaa1966/amp-darwin-arm64"
      sha256 "d2e2299a8c31eeae4471c3e0d01c3ca3d930b6b02f0cd2a2b0df74696de1a4b3"
    else
      url "https://static.ampcode.com/cli/0.0.1786796448-gaa1966/amp-darwin-x64"
      sha256 "96828f69e15d4e40dcbc98a1519f61fbeaa715d487de3b2ece4f1bc8217397cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786796448-gaa1966/amp-linux-arm64"
      sha256 "e72d689710837f05ce64266bf46bd2711b4f7177c782f8ed9e87504ad0931cbd"
    else
      url "https://static.ampcode.com/cli/0.0.1786796448-gaa1966/amp-linux-x64"
      sha256 "cc07f496351798bf88719edf50f43f2d3e916bab9ac5bab2b1d85874b7f26531"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
