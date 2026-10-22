class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792684837-g5097b1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792684837-g5097b1/amp-darwin-arm64"
      sha256 "35accb3ebba5b707e626082b508e34a7a17b245bce291b694feec812f84d795c"
    else
      url "https://static.ampcode.com/cli/0.0.1792684837-g5097b1/amp-darwin-x64"
      sha256 "1082388adf867182d0c68c7751497ee78565b3ef6a8731f63b4888f398f7cb9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792684837-g5097b1/amp-linux-arm64"
      sha256 "9ad08d80cb5fd2583d6409c66cd18c143a635e54bfb4c3e3c19f28cfb9707bf1"
    else
      url "https://static.ampcode.com/cli/0.0.1792684837-g5097b1/amp-linux-x64"
      sha256 "421cc736a3f532fd799211e8e61e8d2b2c6e326d789df429d6efd90ecb34d6c1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
