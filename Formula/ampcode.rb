class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788523256-g131f11"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788523256-g131f11/amp-darwin-arm64"
      sha256 "bdcb874c7c08590529ca87c53e098cf5204c84a175f702c0e51d38f8de360097"
    else
      url "https://static.ampcode.com/cli/0.0.1788523256-g131f11/amp-darwin-x64"
      sha256 "033c713f7d28c3233b15300e3224ba35bf1fdb2c5f01d3684f20706ae9bf7962"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788523256-g131f11/amp-linux-arm64"
      sha256 "a7fc33cc2b1a1bc9e764ebe26fcf6ed5b3f8761d647be8fc549ed9e90d16f2f9"
    else
      url "https://static.ampcode.com/cli/0.0.1788523256-g131f11/amp-linux-x64"
      sha256 "0412e44cd006401c29f0261a350b37eb67726102bce1bfc869919bd4344e54d7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
