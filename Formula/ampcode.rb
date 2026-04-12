class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775995534-g3f79eb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775995534-g3f79eb/amp-darwin-arm64"
      sha256 "f66ab11992fae0622d9b16a5691c74bf2ff1c3f0b3efb9890c21ad49ec949aa4"
    else
      url "https://static.ampcode.com/cli/0.0.1775995534-g3f79eb/amp-darwin-x64"
      sha256 "1454821ba1e84781395ef867b2e598fe3a1371a652c3c01763e98925ecb78323"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775995534-g3f79eb/amp-linux-arm64"
      sha256 "80048d5dcb2da6aa2c0de614ea162d045162f3ebcbc6d27e6ebc3d3e414cca14"
    else
      url "https://static.ampcode.com/cli/0.0.1775995534-g3f79eb/amp-linux-x64"
      sha256 "36f696e4ab2c0ec9710e1f9a1b1a6fe5ecd4fb6b2bc4a2f62f4fdadf2fcd0b9e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
