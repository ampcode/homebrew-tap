class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778160156-gb2be4b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778160156-gb2be4b/amp-darwin-arm64"
      sha256 "004b923c498eb2c8618d54efda0030afc67f9faeb5420a301822d6ac445e30af"
    else
      url "https://static.ampcode.com/cli/0.0.1778160156-gb2be4b/amp-darwin-x64"
      sha256 "9d46975ed7a8505b1ee54343d28311643883eae72e4528ca3ee7ad6490587c51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778160156-gb2be4b/amp-linux-arm64"
      sha256 "1c8fd6bfa3bc696e2aa9a7216f3f2cde971298c3a28ac3cac8306c49e86b5081"
    else
      url "https://static.ampcode.com/cli/0.0.1778160156-gb2be4b/amp-linux-x64"
      sha256 "3c8bf6664dfe1887854940823fe7cd8c78d9eed64f0b95ce69ea05f86b61f10b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
