class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789776094-g9dbec2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789776094-g9dbec2/amp-darwin-arm64"
      sha256 "c2b41b90c7bf6286614ef6a070dc0ecbb04ee13e79af0af4252165fe273eb8dd"
    else
      url "https://static.ampcode.com/cli/0.0.1789776094-g9dbec2/amp-darwin-x64"
      sha256 "af261d09198b4c9b22b42ee18fbe80dc8e6c9a15f60566575295fdc33f809076"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789776094-g9dbec2/amp-linux-arm64"
      sha256 "35e7da623df8f88f6e5fa21915161d7bc1640e0ee447bf6bb6eb2d4d54fc5227"
    else
      url "https://static.ampcode.com/cli/0.0.1789776094-g9dbec2/amp-linux-x64"
      sha256 "8664b758dd0f403a7430bdcf1293dc33052df644226fec17da87cdde42f6298f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
