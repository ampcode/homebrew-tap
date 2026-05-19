class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779150035-gb0d821"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779150035-gb0d821/amp-darwin-arm64"
      sha256 "9eb56ac90ff09a150c38ffa215ba4b82df01b2903cc0fc04658c1d4863d9e242"
    else
      url "https://static.ampcode.com/cli/0.0.1779150035-gb0d821/amp-darwin-x64"
      sha256 "384d0cd80fa8ee4dd456d42210c2976ba3eb644fd4ef2168ef61680151d34171"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779150035-gb0d821/amp-linux-arm64"
      sha256 "f9add7d97768e6fdd30ac2846408c88389c7eeabf6caa63e5d9853c57574b202"
    else
      url "https://static.ampcode.com/cli/0.0.1779150035-gb0d821/amp-linux-x64"
      sha256 "c41ac25008eaca5580390e28b86a324bcef083fbb12c03e5e452a84f12b06fb1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
