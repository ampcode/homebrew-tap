class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791331298-ge8fb65"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791331298-ge8fb65/amp-darwin-arm64"
      sha256 "3a29ef7ef75728910f3de71fa80f6ce9051cb5619f1bb6cc455996d67378c52c"
    else
      url "https://static.ampcode.com/cli/0.0.1791331298-ge8fb65/amp-darwin-x64"
      sha256 "a70ca851dea9e84b2bca617d2d4a24f2d78d3b9edcb832db1f6598db8f84bb00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791331298-ge8fb65/amp-linux-arm64"
      sha256 "1a86be501b6013ddaa4986f391aa58e0370d91b313d69396677a5373a8d751aa"
    else
      url "https://static.ampcode.com/cli/0.0.1791331298-ge8fb65/amp-linux-x64"
      sha256 "e6eb0021f164f20076997798cde7355472f83bb9482c778c3615c9a9de3f7e55"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
