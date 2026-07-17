class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784297811-gfaaa49"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784297811-gfaaa49/amp-darwin-arm64"
      sha256 "d5741b6fe78c0adc8e04dd25f2f8e02cae448ba0e077671ba18d5b0ccbb677b3"
    else
      url "https://static.ampcode.com/cli/0.0.1784297811-gfaaa49/amp-darwin-x64"
      sha256 "cc3f2bf6b549c8dec8d3fa777200df6269a09ad6f1f03253237471586dfeaae9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784297811-gfaaa49/amp-linux-arm64"
      sha256 "9e7109e6e11bfb608579c94c7b6c560a40e06e5823fef2a49f9fb75052f60a28"
    else
      url "https://static.ampcode.com/cli/0.0.1784297811-gfaaa49/amp-linux-x64"
      sha256 "e36955d0dd9f062e9b9206c73fffa72c291fb504bfb922756be5f583a75397b8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
