class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785775571-g90a48e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785775571-g90a48e/amp-darwin-arm64"
      sha256 "9c5e512f368c089b840b38e952a2f1ff98f457b1ad6ce83dbbb0e51aeb7a2752"
    else
      url "https://static.ampcode.com/cli/0.0.1785775571-g90a48e/amp-darwin-x64"
      sha256 "886dca1adf7b3c9d4a563e556f5c4ce6e0bdc3c9e628c152e9ab9bf64dbf8ae8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785775571-g90a48e/amp-linux-arm64"
      sha256 "2386e8a4ff2605cf4a08cbf59af6e3c7e1fff57dd7ea02040c9581c7fa6cd39b"
    else
      url "https://static.ampcode.com/cli/0.0.1785775571-g90a48e/amp-linux-x64"
      sha256 "27ee657665acbc9f60f5793bd96de583effd503160bebce1319ab3add5587557"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
