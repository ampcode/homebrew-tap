class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782652016-g92a693"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782652016-g92a693/amp-darwin-arm64"
      sha256 "499459cd39a225b816a186650d69477dbb5ec90339b33be654d22f47ccaa112c"
    else
      url "https://static.ampcode.com/cli/0.0.1782652016-g92a693/amp-darwin-x64"
      sha256 "1120a439ad24929f69e44652ae8407e2e834edf7048654ecc2825c130c61870b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782652016-g92a693/amp-linux-arm64"
      sha256 "91b438c378bd843284c17bba5b1d5c86850c11d2405529b4b4dad4aefee6fa95"
    else
      url "https://static.ampcode.com/cli/0.0.1782652016-g92a693/amp-linux-x64"
      sha256 "61570c9eef46a9be842fe8a4592017811769632b547156b0cefa5793e25a3c14"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
