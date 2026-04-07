class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775563890-g5b477c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775563890-g5b477c/amp-darwin-arm64"
      sha256 "a31a2f6ff52ad79a6a4bbd866b5d2864a3c7a0e55aca8a8d3ba2c359d9c2dc2e"
    else
      url "https://static.ampcode.com/cli/0.0.1775563890-g5b477c/amp-darwin-x64"
      sha256 "0a6d7bb17b5e96e1cf66d7e57ec3a4d1b5685c75f6c3422434ef676d8a63afad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775563890-g5b477c/amp-linux-arm64"
      sha256 "39594a1e7f87d4d8ff4371dff97bc63bffd49f7184bfb9f7cdee127fb0855b3a"
    else
      url "https://static.ampcode.com/cli/0.0.1775563890-g5b477c/amp-linux-x64"
      sha256 "24c529b6de96610861caaa31e902b63d355293b9aba9a4970dce49f56486ac2e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
