class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785370680-g640172"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785370680-g640172/amp-darwin-arm64"
      sha256 "2c168c4a5d22a69c38e8a7270119698a03050baaaabd7072fff2be42cfe4cc07"
    else
      url "https://static.ampcode.com/cli/0.0.1785370680-g640172/amp-darwin-x64"
      sha256 "9143651539ad66e8eb1b6bfecc1eb245562ee192f15e62a29a40e8feebd52144"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785370680-g640172/amp-linux-arm64"
      sha256 "1bcb0a3d2670502c4b4c02aa01c16fda3cae438c6713079b770ad3e450557d47"
    else
      url "https://static.ampcode.com/cli/0.0.1785370680-g640172/amp-linux-x64"
      sha256 "41dbdc2236a64e6769a481f6693f7110c2c4df09da53a686cad570594c567327"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
