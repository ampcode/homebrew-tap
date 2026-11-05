class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793857728-g655a2c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793857728-g655a2c/amp-darwin-arm64"
      sha256 "0b754b6c60dff17581600782e045cc2b6d92bb6846b093be34a29e7cbdb1d199"
    else
      url "https://static.ampcode.com/cli/0.0.1793857728-g655a2c/amp-darwin-x64"
      sha256 "048e96c16110bcdfc49576685252a569ba689f5e1c5b1c89d6e1c4b5e627876a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793857728-g655a2c/amp-linux-arm64"
      sha256 "5fd92ec99539fbe96f030a77c19bbf517216cc1dd211893c40507e58ef1b7250"
    else
      url "https://static.ampcode.com/cli/0.0.1793857728-g655a2c/amp-linux-x64"
      sha256 "81422859b9cfb8dac344792261a5964f20312b17d1728e78fafcc3339ead5c91"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
