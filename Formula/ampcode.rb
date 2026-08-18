class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787035743-g131843"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787035743-g131843/amp-darwin-arm64"
      sha256 "eb64b97390c4067bc3b46f6ccd0c437b0713f732ad43f93bca20f667ad8a28dd"
    else
      url "https://static.ampcode.com/cli/0.0.1787035743-g131843/amp-darwin-x64"
      sha256 "cfcf6634c46e6d2bafa45c445fa914af1e0d85cd0a179537d595e913c6daf3e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787035743-g131843/amp-linux-arm64"
      sha256 "a137432b7492d5bfa36afc50169af045050a500c91d994237ecc8a7ab89716b0"
    else
      url "https://static.ampcode.com/cli/0.0.1787035743-g131843/amp-linux-x64"
      sha256 "44d8d6e840c659bdf8b6621d697002ea5d56f432eac86f1205fdb6ea2305e364"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
