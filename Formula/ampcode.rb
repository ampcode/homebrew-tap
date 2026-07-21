class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784610062-g06294c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784610062-g06294c/amp-darwin-arm64"
      sha256 "079d2966a48c38550ca924e10fb86ca1c8b782cf77bb6bdd52e32a8473754db2"
    else
      url "https://static.ampcode.com/cli/0.0.1784610062-g06294c/amp-darwin-x64"
      sha256 "6c637e73641db5660e4a7ba8d87e9c0f5c96833c65acc8ac6c3a4a416abe0f0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784610062-g06294c/amp-linux-arm64"
      sha256 "76cbd1b613cce9f5b7aebc29de478bfb6fc1da5d5d11d42d8ec1b7d98101025d"
    else
      url "https://static.ampcode.com/cli/0.0.1784610062-g06294c/amp-linux-x64"
      sha256 "1e8fb4f416f4dc7b1850d5cd4beb6b105ce4d1e48aa740c1475c60ae0ffc849b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
