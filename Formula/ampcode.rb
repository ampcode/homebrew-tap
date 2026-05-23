class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779495531-g96a1a6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779495531-g96a1a6/amp-darwin-arm64"
      sha256 "5672aa47d9c6c84a1a13e447f4214e7907149d5e0ee1f5a2b2e0f64d15909ef7"
    else
      url "https://static.ampcode.com/cli/0.0.1779495531-g96a1a6/amp-darwin-x64"
      sha256 "6118b6a1fd930d5e3e56e787b255124bc33f57a4dcab40d0ee431619ecab071e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779495531-g96a1a6/amp-linux-arm64"
      sha256 "7ebb6d48f3cca754e533cb7dd9a2da5c4b0469941d093f8081fa26f68f931b96"
    else
      url "https://static.ampcode.com/cli/0.0.1779495531-g96a1a6/amp-linux-x64"
      sha256 "70cb718cbc959448d03ff19232557a8edbc2a1e208c64151b5f6eb16c79b63b9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
