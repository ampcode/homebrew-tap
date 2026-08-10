class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786363957-g4b9d89"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786363957-g4b9d89/amp-darwin-arm64"
      sha256 "2b673fdce66fd96d653fc5080ff4adae5133bdafa074df4f39e9ea6c3634dc27"
    else
      url "https://static.ampcode.com/cli/0.0.1786363957-g4b9d89/amp-darwin-x64"
      sha256 "90e16199ae45c56197b63f95510248480dcf3a8aeedcf1139ba63f854fb9b7cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786363957-g4b9d89/amp-linux-arm64"
      sha256 "c8c9e33fdd2941fd89d0544b4cb9347ed95664df7b42fd9aeeeddea84c951f1f"
    else
      url "https://static.ampcode.com/cli/0.0.1786363957-g4b9d89/amp-linux-x64"
      sha256 "6bdbad461dc803e91e29d017a1f048c87f74cdf17d490e99d2f958adc60355e6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
