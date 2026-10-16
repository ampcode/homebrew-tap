class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792185362-ga97f29"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792185362-ga97f29/amp-darwin-arm64"
      sha256 "bb05fe12521ede096b47cdb88534cea616b1e8ecacb7073bdf8bafca8b8a63dc"
    else
      url "https://static.ampcode.com/cli/0.0.1792185362-ga97f29/amp-darwin-x64"
      sha256 "459d2cea894eb64fcc0b3258e91a1ae28bfb26f7d938cf46fc8f4bbc332640ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792185362-ga97f29/amp-linux-arm64"
      sha256 "5257c2a6c716034a790993892ba5350f782548830f751680d6dfa26c5c962786"
    else
      url "https://static.ampcode.com/cli/0.0.1792185362-ga97f29/amp-linux-x64"
      sha256 "72f8eeb7c723be0bfe4cca5eb2bd9c133139a97c053e49b4ea253b33f4952ca9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
