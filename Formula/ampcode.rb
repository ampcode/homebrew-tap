class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785701947-g840756"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785701947-g840756/amp-darwin-arm64"
      sha256 "04388027d19ea3299a87e4a52203118971c1445b987220f13c38dd7d9ef3cbaf"
    else
      url "https://static.ampcode.com/cli/0.0.1785701947-g840756/amp-darwin-x64"
      sha256 "2e89a7885dd4ce194ee5316c96393e8764d31d00b8020796b6c38e5cf65a99b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785701947-g840756/amp-linux-arm64"
      sha256 "f0f48ec775f7be76cc5b05fe0cb4e03d208807cb2ec66fff7973a0d8b506ad56"
    else
      url "https://static.ampcode.com/cli/0.0.1785701947-g840756/amp-linux-x64"
      sha256 "3a1ecc51d46fddfbdf12c7243aeb46fac208dd4a6ce0fec8ddaf5420efc4b87b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
