class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785412283-g44d1db"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785412283-g44d1db/amp-darwin-arm64"
      sha256 "489496d8b6e960773f05b915aaf2590ec32b69eca8d5c1b4ecfc68b4c259789f"
    else
      url "https://static.ampcode.com/cli/0.0.1785412283-g44d1db/amp-darwin-x64"
      sha256 "a2cdc24b1a869aa34781554883f0d1917cdbabb468c4a3f9528a0b54e01739c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785412283-g44d1db/amp-linux-arm64"
      sha256 "a4a21607cd3a1bd25c3bd728c2c779fc3c53593a123ed06e303baeda4bf7a180"
    else
      url "https://static.ampcode.com/cli/0.0.1785412283-g44d1db/amp-linux-x64"
      sha256 "e02130805db2f4b2951f08da97498c1799c5b8b1b3583f1b3004c56a141648af"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
