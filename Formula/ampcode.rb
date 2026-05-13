class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778668266-ga89ba0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778668266-ga89ba0/amp-darwin-arm64"
      sha256 "4963adb75d7066d7fbb6701f2b90b4db034c10982cf619862f5a2f41b5ea8125"
    else
      url "https://static.ampcode.com/cli/0.0.1778668266-ga89ba0/amp-darwin-x64"
      sha256 "c99d6304133b6558e1117a7da38ce759105fb17ea69a517c4179e5ec11232ea0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778668266-ga89ba0/amp-linux-arm64"
      sha256 "eb8f13e93383337f8d563c29d24522e0b6cbdf6b942361faae415ff84c9b306d"
    else
      url "https://static.ampcode.com/cli/0.0.1778668266-ga89ba0/amp-linux-x64"
      sha256 "cd84c66d270e5c8ea7e74eb2bbe659f7c5c0553d6e656441657a93c43550dace"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
