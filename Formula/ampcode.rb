class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782403214-g1d2d52"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782403214-g1d2d52/amp-darwin-arm64"
      sha256 "e120bb5edf833d74037ba64599318e9ecb75d711ded6ef63cc58b9200dd4f391"
    else
      url "https://static.ampcode.com/cli/0.0.1782403214-g1d2d52/amp-darwin-x64"
      sha256 "e3d529f69ef1b3dfdda59569bbc2e969e07317607df129de4098f67a737397cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782403214-g1d2d52/amp-linux-arm64"
      sha256 "cb4f3ad9e3b80b4b7cceea09b00e9ada7411ca7799f65f3b3a06c27541b6cc17"
    else
      url "https://static.ampcode.com/cli/0.0.1782403214-g1d2d52/amp-linux-x64"
      sha256 "7a6791f0b82bd468a20d81f1f96e64980c63b566025f07081062e5449099e8b2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
