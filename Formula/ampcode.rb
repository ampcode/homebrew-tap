class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788969649-g56d4c6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788969649-g56d4c6/amp-darwin-arm64"
      sha256 "4352ca821c628edbf9d2649f2bd18e21359e7b66365f778ae13383620d083db0"
    else
      url "https://static.ampcode.com/cli/0.0.1788969649-g56d4c6/amp-darwin-x64"
      sha256 "dbc2bd91d1b88de31772b12f0e71304d089a4166167aad3bbfde9c02f416a256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788969649-g56d4c6/amp-linux-arm64"
      sha256 "96a60740474ce5b74d1442359c520f128ccfcde287a9dee51f5c350a91b4f823"
    else
      url "https://static.ampcode.com/cli/0.0.1788969649-g56d4c6/amp-linux-x64"
      sha256 "495fddaf3748cef4ab739fa8bce8f45ebfd9a4776855f9914b9459e3731f4431"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
