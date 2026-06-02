class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780421295-g521930"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780421295-g521930/amp-darwin-arm64"
      sha256 "61116a097cbc74386676a5eb0f28513a9a46ea7de2646e002bf6f9d644861216"
    else
      url "https://static.ampcode.com/cli/0.0.1780421295-g521930/amp-darwin-x64"
      sha256 "8c4a2c591142b81cb8c231ef1164fbaa212f4f3ae7cb22297a6f2aaf5b12c8d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780421295-g521930/amp-linux-arm64"
      sha256 "8f28ea5c510c83bcf2266c2d53e5f5403429998ef1107a3ab87bdb6e310cbcf9"
    else
      url "https://static.ampcode.com/cli/0.0.1780421295-g521930/amp-linux-x64"
      sha256 "a8b49d7f0b254537a0b8c68dcc0e6c441bf45f654cf7a12d47164e66f3d7b864"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
