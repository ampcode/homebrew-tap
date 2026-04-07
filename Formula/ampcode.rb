class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775520453-gc5dccc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775520453-gc5dccc/amp-darwin-arm64"
      sha256 "aca3436f34895d983f6552e992d90c4a8dfca5efe51f87e6186dce0447db7962"
    else
      url "https://static.ampcode.com/cli/0.0.1775520453-gc5dccc/amp-darwin-x64"
      sha256 "2d2fbf89992e0674b901d7f82c722e440bf796a9e7c95e9320be26007c540105"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775520453-gc5dccc/amp-linux-arm64"
      sha256 "f95b935dd9fe9cf65ebd26954a05581b4074ae6139ae8c5e125297542faa270e"
    else
      url "https://static.ampcode.com/cli/0.0.1775520453-gc5dccc/amp-linux-x64"
      sha256 "016347c5cbe00ec0c5327a9ce4006b91fcd8f66c3e40d7d8ead8e081d5a22eb2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
