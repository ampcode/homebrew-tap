class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787414485-g84e7f4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787414485-g84e7f4/amp-darwin-arm64"
      sha256 "5f797c4448ad264d7dd90b50384085f5b1ee3fe2017fdef6c32d36a5f5ee58d8"
    else
      url "https://static.ampcode.com/cli/0.0.1787414485-g84e7f4/amp-darwin-x64"
      sha256 "21773215b46f3fb86e3dbb12b4c11883010ae20c5d3316c312ce44b3da720e30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787414485-g84e7f4/amp-linux-arm64"
      sha256 "48a027e58258276322bf35870824ea67a9a94c2001221a6b29b6cf02afaf141a"
    else
      url "https://static.ampcode.com/cli/0.0.1787414485-g84e7f4/amp-linux-x64"
      sha256 "0a23e06f2b724ed2d9bef94dbfc783fcb0b622efa71dffa7372a96c9d7411c76"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
