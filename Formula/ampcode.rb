class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785157103-gba62cd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785157103-gba62cd/amp-darwin-arm64"
      sha256 "5a13ce1682b8f3b50ecc42ffe6462cd7f17e7144dca248c4814219cb440a0e0e"
    else
      url "https://static.ampcode.com/cli/0.0.1785157103-gba62cd/amp-darwin-x64"
      sha256 "8f758efdcc29cdb4d74c5e51d81da21429e530966c586067001d6472890db3cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785157103-gba62cd/amp-linux-arm64"
      sha256 "0623b02e687c3cc060c8818f0757c4ef251dec741d4cbf95497c7ab27458cb82"
    else
      url "https://static.ampcode.com/cli/0.0.1785157103-gba62cd/amp-linux-x64"
      sha256 "1b3e29a3481aead14b744cd43eef769d310a9f54e041518ac90fc31d3bbb3719"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
