class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780728302-ge188e5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780728302-ge188e5/amp-darwin-arm64"
      sha256 "5a79bfeaee0bc5db1fcd9073b5b2aa85a66fe3651f6708b614d527fbe02fbef9"
    else
      url "https://static.ampcode.com/cli/0.0.1780728302-ge188e5/amp-darwin-x64"
      sha256 "0e5f9c2e0ff02e5f06049f497673deb06211c35346bcb9321b59b8da1d1689e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780728302-ge188e5/amp-linux-arm64"
      sha256 "5d090c9655b5f71ad2ffbec663bbacc9968c6acf1000ddeadd79315ba4191607"
    else
      url "https://static.ampcode.com/cli/0.0.1780728302-ge188e5/amp-linux-x64"
      sha256 "500c6316212935fb22be95c11257879dc71dfdf5cec9e00a9bc3197f5693bdfc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
