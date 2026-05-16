class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778900741-gd9af82"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778900741-gd9af82/amp-darwin-arm64"
      sha256 "94fda682c65b440acc54dbf38b0d9016914ea7723a997730b6562ba5e1fe10d8"
    else
      url "https://static.ampcode.com/cli/0.0.1778900741-gd9af82/amp-darwin-x64"
      sha256 "dc231a046ac38a455568490281996fb1fd9ab66f4b6a63fead3ca5c25b96c874"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778900741-gd9af82/amp-linux-arm64"
      sha256 "1d63a280f941f7bf9d3e0404a89c9ddd10b08195babad458263884a6a0e93319"
    else
      url "https://static.ampcode.com/cli/0.0.1778900741-gd9af82/amp-linux-x64"
      sha256 "3ee34e7ce842a87693bba69c65cb15829b9b3dfa832486b8250e57f7665ef625"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
