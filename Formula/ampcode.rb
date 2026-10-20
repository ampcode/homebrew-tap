class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792526457-g7b2590"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792526457-g7b2590/amp-darwin-arm64"
      sha256 "d2247b171a72253be76324d5d4877fc1384bb6f037872e314fa167c83405d846"
    else
      url "https://static.ampcode.com/cli/0.0.1792526457-g7b2590/amp-darwin-x64"
      sha256 "2c1e7e265895497485a4064a5e559a4abda82581c7317d700a4efc1504d83108"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792526457-g7b2590/amp-linux-arm64"
      sha256 "cc57432544c78deafa5daf2b65b4e76e0bafb9cf0562fc14c3ccf960fe983365"
    else
      url "https://static.ampcode.com/cli/0.0.1792526457-g7b2590/amp-linux-x64"
      sha256 "2be277bbbb38af63e3c53fbda078121dc6572e35b7ff17014f560999bb4b4244"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
