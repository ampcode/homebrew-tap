class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788858037-gc9d85c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788858037-gc9d85c/amp-darwin-arm64"
      sha256 "dd023579ab3abdf2d4693f57a22e53e0f554c6cbedba4cb8beee3b7f9b0484bd"
    else
      url "https://static.ampcode.com/cli/0.0.1788858037-gc9d85c/amp-darwin-x64"
      sha256 "854f8569f1eb48f021578c00e549c3f934e33f82312fd7b6078b444dc94135b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788858037-gc9d85c/amp-linux-arm64"
      sha256 "750146ddc412ec88e9d53313cacba20b0d4128f74798f730ccdf7879dc01b535"
    else
      url "https://static.ampcode.com/cli/0.0.1788858037-gc9d85c/amp-linux-x64"
      sha256 "eb8fcd21ca852ba041fde68e9431ce938651a287f82f8d4b056e505c9eec6a6f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
