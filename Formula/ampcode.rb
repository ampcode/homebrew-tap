class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788537632-g334da4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788537632-g334da4/amp-darwin-arm64"
      sha256 "5f7eea3f42cc9311e28ca428f564f2b0e89122d826ad0ed5ae24391ebd1e5865"
    else
      url "https://static.ampcode.com/cli/0.0.1788537632-g334da4/amp-darwin-x64"
      sha256 "e6710cc6e7eb1aaf51ffd6643ce0d4f3ca50d02bde029874fe9c994306c26797"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788537632-g334da4/amp-linux-arm64"
      sha256 "ae5b3b4bbf7e199684d259fb7024fab489ebbd95f88b67f094a99069ba085357"
    else
      url "https://static.ampcode.com/cli/0.0.1788537632-g334da4/amp-linux-x64"
      sha256 "eea62f3608c58da4b3a2734665549ae83c0cf657382fa3774d1693316335815e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
