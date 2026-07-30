class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785443059-g182e67"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785443059-g182e67/amp-darwin-arm64"
      sha256 "0f099f49a3cdeffa058cb18ae9d82e910f34aa7d6d2f297c3e98531c605e9e83"
    else
      url "https://static.ampcode.com/cli/0.0.1785443059-g182e67/amp-darwin-x64"
      sha256 "5c7607ce4c806e19c5937972224fb76f147b04fa4b38519d837546f1ec567b3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785443059-g182e67/amp-linux-arm64"
      sha256 "a11cbbf771377614075895df430c308e2c8a90fdd6bd3cc834fd9e01feebd4e1"
    else
      url "https://static.ampcode.com/cli/0.0.1785443059-g182e67/amp-linux-x64"
      sha256 "587413efd83d8e537c7cbff534dbcd576fb4feff603c24bc0201b655b5cfcd24"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
