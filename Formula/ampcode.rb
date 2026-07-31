class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785538769-g986738"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785538769-g986738/amp-darwin-arm64"
      sha256 "045124dbc1590f77310436f09ba32246cde619b757da34ff4267adc7f0c0ced3"
    else
      url "https://static.ampcode.com/cli/0.0.1785538769-g986738/amp-darwin-x64"
      sha256 "80d22b06e77268cf630eb72a93a8c48a6d738bc8aa4c22b334d08b0ac12be31d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785538769-g986738/amp-linux-arm64"
      sha256 "4addca00ae15e41530fff1ad81ed64841290442232d5c79c967dc13d14dca55e"
    else
      url "https://static.ampcode.com/cli/0.0.1785538769-g986738/amp-linux-x64"
      sha256 "3964399062b32d17b08790ba9990065524bfb47750207f6a60ed7592454b3848"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
