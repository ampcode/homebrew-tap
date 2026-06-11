class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781182289-g1f4df1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781182289-g1f4df1/amp-darwin-arm64"
      sha256 "a81a017620d2a97adc035a10cd4e1705dac7b0e295c486e60dd3a22ee54c972e"
    else
      url "https://static.ampcode.com/cli/0.0.1781182289-g1f4df1/amp-darwin-x64"
      sha256 "675d4398c29f0477d593a0a3c6c93875d056d875391cebe90c2e26e73495be69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781182289-g1f4df1/amp-linux-arm64"
      sha256 "fb9296f72c1dbc64a1ee73916e1c9712f84e1d7a3a5edf6ef218a5c30bc0fcb3"
    else
      url "https://static.ampcode.com/cli/0.0.1781182289-g1f4df1/amp-linux-x64"
      sha256 "2980dfc1fb2e53c40fb3d366016caeb5129d5b06dadccbad9490a77302154ee3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
