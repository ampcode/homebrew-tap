class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780376758-ga4ad23"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780376758-ga4ad23/amp-darwin-arm64"
      sha256 "a5e16ad7fbd5c2e090e6314d225aae208c2829d6fc1f1d4b4d84384a042dd98a"
    else
      url "https://static.ampcode.com/cli/0.0.1780376758-ga4ad23/amp-darwin-x64"
      sha256 "3553989a5f789ea1bd9ca34b8c0861f1609de7f56cc037ddf960028af3d402f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780376758-ga4ad23/amp-linux-arm64"
      sha256 "17621d9a5b3fb287db51c90d1b7f19015b8dfc5e0e8109d85d23db41782fd62a"
    else
      url "https://static.ampcode.com/cli/0.0.1780376758-ga4ad23/amp-linux-x64"
      sha256 "1266d2bdf1248683df2246399d82c3aad659a8b25bc79d3bb5de17007dd38291"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
