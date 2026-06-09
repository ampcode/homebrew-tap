class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780990491-ge5a5e6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780990491-ge5a5e6/amp-darwin-arm64"
      sha256 "00a2837f9de02b91d7712b512ad485fe0683e35752d6ceeae19709c921fdc3b4"
    else
      url "https://static.ampcode.com/cli/0.0.1780990491-ge5a5e6/amp-darwin-x64"
      sha256 "bcc5e9f7d45531633176bb4801172db2216e0bbfc72e9a4ec49a4f270f5ac1e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780990491-ge5a5e6/amp-linux-arm64"
      sha256 "d6441a24c90f2e0c1322e7fc268c7f0ac40eae7e9c56ddf65d7bb7fac66ae887"
    else
      url "https://static.ampcode.com/cli/0.0.1780990491-ge5a5e6/amp-linux-x64"
      sha256 "2b954a4474d939685609cd2da503ccbe61a03815cb011df4722ee8639f9af5b5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
