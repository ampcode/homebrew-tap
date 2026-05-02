class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777705260-g7a54aa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777705260-g7a54aa/amp-darwin-arm64"
      sha256 "a4a324ad966b0e222d83143117fa2377d29dd72d5cab42efc5f24651619a908c"
    else
      url "https://static.ampcode.com/cli/0.0.1777705260-g7a54aa/amp-darwin-x64"
      sha256 "79f37609f141eed74c0a12d74ceccd6309b0a72b32422cd58ba338f80af36198"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777705260-g7a54aa/amp-linux-arm64"
      sha256 "673800c3899e92ea711301606cd3454be5c50d519fcc543aa2d1ba7ded136361"
    else
      url "https://static.ampcode.com/cli/0.0.1777705260-g7a54aa/amp-linux-x64"
      sha256 "1a682becacbc690fe60528b71a1e015dbfe1f54398604eb25a263fe316eecbde"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
