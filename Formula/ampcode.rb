class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782372662-g679db8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782372662-g679db8/amp-darwin-arm64"
      sha256 "bfcadfcd0cce0d5db35e496c194c12d4fb83e6440b75ac540880f986dbff2c57"
    else
      url "https://static.ampcode.com/cli/0.0.1782372662-g679db8/amp-darwin-x64"
      sha256 "be6febcf487391188b9223e4795050948c5531e0dc8a96744efec2fbcb329c74"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782372662-g679db8/amp-linux-arm64"
      sha256 "d8189e2b290858203163210988a29aa28390e1bdf9ff6679dd63b74032461c85"
    else
      url "https://static.ampcode.com/cli/0.0.1782372662-g679db8/amp-linux-x64"
      sha256 "97c1a6602074fce3b27871165d506e8071702e617e13a9d0f009ebb0832eba98"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
