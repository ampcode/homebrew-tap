class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778994836-g963bd3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778994836-g963bd3/amp-darwin-arm64"
      sha256 "4903d2ada5e5cbff74dd442b5aafd4f4ac201060943ab9aa3369ea1d642dbb05"
    else
      url "https://static.ampcode.com/cli/0.0.1778994836-g963bd3/amp-darwin-x64"
      sha256 "62db3451097ae38ef2139b89b6210445fd2729487fb131549ff47a62750aeba0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778994836-g963bd3/amp-linux-arm64"
      sha256 "ac118c66aca049a216231ece1f9766a6a611c6dbf34de2e9f8dd7fc344215e11"
    else
      url "https://static.ampcode.com/cli/0.0.1778994836-g963bd3/amp-linux-x64"
      sha256 "2a73fc58e3ede8bb886f09e4d27c64f1f7bbe44c41996cc8abec3f326d6e96ec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
