class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792569643-g77e609"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792569643-g77e609/amp-darwin-arm64"
      sha256 "b27b9acced15158bf717eeff640f411484e892bb0e68a09da84e65edc8d5d2e4"
    else
      url "https://static.ampcode.com/cli/0.0.1792569643-g77e609/amp-darwin-x64"
      sha256 "bb7487313f080d9a27428f8fd4bb22321fe6d10296ea49f4d60d827db66cbd41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792569643-g77e609/amp-linux-arm64"
      sha256 "aa7cdb77e0d706ce8396440a5c058a132535a3f52cbb55cf64e689090189264c"
    else
      url "https://static.ampcode.com/cli/0.0.1792569643-g77e609/amp-linux-x64"
      sha256 "876e3460638b468e6ba5b8d56e6b9d6f340caaadbea909b954a3416b5e72e7c1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
