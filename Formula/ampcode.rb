class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774932368-g0d0b3f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774932368-g0d0b3f/amp-darwin-arm64"
      sha256 "f4e7d9206a0b2f8bfb3a121536769753d93cf0ca2eac2428700b44f37701aae8"
    else
      url "https://static.ampcode.com/cli/0.0.1774932368-g0d0b3f/amp-darwin-x64"
      sha256 "4210b941419af6da6e90805ed6eaabe3da3c2e8005d62cc6a3a8aaf605c7f3cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774932368-g0d0b3f/amp-linux-arm64"
      sha256 "a35c559a791a3542756822e0c8d4f22a75303eba4b2050e56ca513b7c56002d4"
    else
      url "https://static.ampcode.com/cli/0.0.1774932368-g0d0b3f/amp-linux-x64"
      sha256 "ee1d4f682a35215e955b230cb92ac71ececb9e11759b5aa0d2d38170349d57e7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
