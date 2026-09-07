class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788739286-gf348fe"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788739286-gf348fe/amp-darwin-arm64"
      sha256 "cff0838629ae8782fb913763bef28a55030d56fabe8d5d010239c65711c6492d"
    else
      url "https://static.ampcode.com/cli/0.0.1788739286-gf348fe/amp-darwin-x64"
      sha256 "1129cd85f45c15a2731aa47bca7a515ef53fb9d5c01f4b0c6204746c07db2a95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788739286-gf348fe/amp-linux-arm64"
      sha256 "fc766958449b81c211683ac328945098d7f6576d026ab60dc8c7719dd1bc614a"
    else
      url "https://static.ampcode.com/cli/0.0.1788739286-gf348fe/amp-linux-x64"
      sha256 "f5cfff64cf0456d3ad3a89dbf63a2c9e77662d859daa7fb4016f9202141995e1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
