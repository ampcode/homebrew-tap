class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780433882-g06340c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780433882-g06340c/amp-darwin-arm64"
      sha256 "2ec6c83e965cc3f2526ced432f50e3b5dd1a8f473c4bfd2954f991fea3a46c01"
    else
      url "https://static.ampcode.com/cli/0.0.1780433882-g06340c/amp-darwin-x64"
      sha256 "95b2fbcdbff5c95c8e76fb9cf85d489acd9f690e6575581a7d3611a8cb9f1a61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780433882-g06340c/amp-linux-arm64"
      sha256 "048d0f83bd825ed497e68562b0b77f63b9ddc44293c05430c71040ac9f31da2a"
    else
      url "https://static.ampcode.com/cli/0.0.1780433882-g06340c/amp-linux-x64"
      sha256 "62fc119e34fbf8175ec1b7c4a2f3dc94fdb99b57915528cc2173d3503033a17c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
