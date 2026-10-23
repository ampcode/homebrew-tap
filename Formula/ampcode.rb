class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792742448-ge52219"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792742448-ge52219/amp-darwin-arm64"
      sha256 "2ece9669e6ee37af2f87471e3037aaf1d2271ff3ffc98276608a8fd820705eb2"
    else
      url "https://static.ampcode.com/cli/0.0.1792742448-ge52219/amp-darwin-x64"
      sha256 "7f668c7aba8662ff6b4725a46bfa32f593e5d024837e3d21ec9de05077de2ee3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792742448-ge52219/amp-linux-arm64"
      sha256 "8e3a220e0fa0a16964d5cc0610842fa917ed18a0ad13da488f1cc55351d8b6e2"
    else
      url "https://static.ampcode.com/cli/0.0.1792742448-ge52219/amp-linux-x64"
      sha256 "bf943bb913de50e251101d373621f60cd6f11b80a3109d2bf47f6307da81732d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
