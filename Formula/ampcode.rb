class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788926461-g32d216"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788926461-g32d216/amp-darwin-arm64"
      sha256 "361141b9a023c62acce5c9643d41befe8af058abe4a665154ce828197c1431da"
    else
      url "https://static.ampcode.com/cli/0.0.1788926461-g32d216/amp-darwin-x64"
      sha256 "065c74af0640eab2a63092406ed0b09e60f4239d87b445dda6e601c8482a9ff4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788926461-g32d216/amp-linux-arm64"
      sha256 "b6e6406b93be957998636076b3ed501abfdf7d7a26a8e680f972dcbf4da80f5b"
    else
      url "https://static.ampcode.com/cli/0.0.1788926461-g32d216/amp-linux-x64"
      sha256 "0dda423609a2e1ecc6c6fc4ac63cc638aa72c88b1cff4f2350440794a8c5aece"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
