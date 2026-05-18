class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779109569-gabaf79"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779109569-gabaf79/amp-darwin-arm64"
      sha256 "7e25e3b55d6b727a227c2c0dd73446ecf4231ddb7b4d3ed40aae8a6eb5178024"
    else
      url "https://static.ampcode.com/cli/0.0.1779109569-gabaf79/amp-darwin-x64"
      sha256 "89744b2af4ee1566fd71503f9aea31ae62299f5ce9143ad28495bf5900639c67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779109569-gabaf79/amp-linux-arm64"
      sha256 "deaaaef5f6e7f7a469a23bbc232d085d69952651a0cd72b9aa00463b70560efb"
    else
      url "https://static.ampcode.com/cli/0.0.1779109569-gabaf79/amp-linux-x64"
      sha256 "ca99aac1754488dda2fc14a6170034aa5ca25571591f46111e8c65c32b64fb85"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
