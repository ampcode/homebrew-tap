class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794499251-g8dc9ce"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794499251-g8dc9ce/amp-darwin-arm64"
      sha256 "8d93d596728273babd53af688abd9a9eca53ebca9157df433995419e35ceb8ab"
    else
      url "https://static.ampcode.com/cli/0.0.1794499251-g8dc9ce/amp-darwin-x64"
      sha256 "43de47415d09f8b9bb6f5d1fdc39f73ef9b86d9cfe221eaf9e86a4ab7517d281"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794499251-g8dc9ce/amp-linux-arm64"
      sha256 "9b62bb8241144fe29c8682db5751e1912c74086cc48f737f6bd4412d07e482b8"
    else
      url "https://static.ampcode.com/cli/0.0.1794499251-g8dc9ce/amp-linux-x64"
      sha256 "b6708cbbe753d1818961456840d00820efb467365881c988d525b62253cee336"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
