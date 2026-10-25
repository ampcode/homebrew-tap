class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792886472-ge1e052"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792886472-ge1e052/amp-darwin-arm64"
      sha256 "3bcfc61461201862436dfbc93daef429fd4dbced375462da7d155159aa00536c"
    else
      url "https://static.ampcode.com/cli/0.0.1792886472-ge1e052/amp-darwin-x64"
      sha256 "7faf6b128ebfb8c6ec61ea4974d3ab756d6c8622c6d7f92b04c05bad8c44798b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792886472-ge1e052/amp-linux-arm64"
      sha256 "3f9ae647916ecf5f0668385dab31e8b5aca95ee29234cc5668f030be4b2186d4"
    else
      url "https://static.ampcode.com/cli/0.0.1792886472-ge1e052/amp-linux-x64"
      sha256 "2b391996e9a56470e5a476f0d985aa80da70805bc2bad20092a625ad85125d47"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
