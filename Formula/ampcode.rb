class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788336060-g5df492"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788336060-g5df492/amp-darwin-arm64"
      sha256 "d5ec8a3990b991f4d180ad0833c8407e79da21068c16e358b201ab3080e82aa3"
    else
      url "https://static.ampcode.com/cli/0.0.1788336060-g5df492/amp-darwin-x64"
      sha256 "1787bf8f64726c936e4a62c2d196852873ef4d97b5e482920b2221fb87ac158a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788336060-g5df492/amp-linux-arm64"
      sha256 "b59a354bec6a6225e5b6a339d71cb2e8241397f5003f5c4d999abe83befbd075"
    else
      url "https://static.ampcode.com/cli/0.0.1788336060-g5df492/amp-linux-x64"
      sha256 "40b80d05b989f70636b3100c12780761fb860056f5804cffa21c6cb30089cbf1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
