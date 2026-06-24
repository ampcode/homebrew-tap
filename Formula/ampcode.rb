class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782286188-g8b3cf1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782286188-g8b3cf1/amp-darwin-arm64"
      sha256 "a4a13b466be471d86bf70e7a0ab8b39c8b7032a6ed750265aa322892f3e932f7"
    else
      url "https://static.ampcode.com/cli/0.0.1782286188-g8b3cf1/amp-darwin-x64"
      sha256 "b97a20235610f8ad081612096edca2ae87ebe71389bb93a69a38fd1fff2ed67f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782286188-g8b3cf1/amp-linux-arm64"
      sha256 "3d2c1d30ba271f89b490384cbd9353949919cdf8bb6255df30598c5ad268479f"
    else
      url "https://static.ampcode.com/cli/0.0.1782286188-g8b3cf1/amp-linux-x64"
      sha256 "1deff678527ce5974bc77b74faab2a7b7d38029e78b6f0dd9e946e7492b73dcd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
