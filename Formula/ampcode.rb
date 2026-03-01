class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772395302-gb80900"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772395302-gb80900/amp-darwin-arm64"
      sha256 "db33ed717fb5b69e52392b2f79ee419932a3740455ba73cb4d0616c0e6bf8d7b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772395302-gb80900/amp-darwin-x64"
      sha256 "e62ffe55147cfcf520a2d17b354af472a0714deb9917818184ac141856ce729a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772395302-gb80900/amp-linux-arm64"
      sha256 "b575e93f8a39550f4f050771c3b4f08749fcd4d01ab0b969fdee47d39211f0ae"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772395302-gb80900/amp-linux-x64"
      sha256 "563b4b88c521e9551d2d650f52d6581c09790ea61c612908fd8b8462beb27da1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
