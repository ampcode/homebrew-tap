class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785170481-ga5b614"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785170481-ga5b614/amp-darwin-arm64"
      sha256 "ee753c8ec781b6c2519c81a4ca8ab5332c1ad7e31d8b15013501c0af70537788"
    else
      url "https://static.ampcode.com/cli/0.0.1785170481-ga5b614/amp-darwin-x64"
      sha256 "82637c5b4e6009ed1d7b0a2ae507e3c7218fa0416573cb2f10ff680146fde222"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785170481-ga5b614/amp-linux-arm64"
      sha256 "ec617bee0772f3db88318c911c190f9f74d99bf100d80f29886e0306f84743d7"
    else
      url "https://static.ampcode.com/cli/0.0.1785170481-ga5b614/amp-linux-x64"
      sha256 "c0e6ee12d88675e42d372264a91770d8465a1434c24c4736439607e0b3743d96"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
