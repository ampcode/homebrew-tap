class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790942453-g299c9d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790942453-g299c9d/amp-darwin-arm64"
      sha256 "f0fd3b5a602872d16473b12850207488839025b2d8b688102ef761b9a2da1b26"
    else
      url "https://static.ampcode.com/cli/0.0.1790942453-g299c9d/amp-darwin-x64"
      sha256 "af2bb45ca62ae2b9643fba4688563b113dc6f9ce9c28bd9e9fb63bfb5931456d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790942453-g299c9d/amp-linux-arm64"
      sha256 "39e6105689d690f8b97565ff98c749e897dfb9480e601483db442effe07a4152"
    else
      url "https://static.ampcode.com/cli/0.0.1790942453-g299c9d/amp-linux-x64"
      sha256 "e62da8be0a1f63182bd9137e589749a427a9973826c189b51fe1569ff1015e1b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
