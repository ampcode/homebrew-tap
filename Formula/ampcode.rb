class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775765597-ga4f47d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775765597-ga4f47d/amp-darwin-arm64"
      sha256 "ddaa0c5aad677aa9601cdd671f6642beefccb85081ece0d8f9d99cd86859e0ce"
    else
      url "https://static.ampcode.com/cli/0.0.1775765597-ga4f47d/amp-darwin-x64"
      sha256 "9d61b3d490905a5cec5ed4f23c1d0ace91afd9dcc4340a778de4d8edd578426a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775765597-ga4f47d/amp-linux-arm64"
      sha256 "b542a6f13d0c7ddf1c94b3ffb1cac97b1c90397e529ebb170a3140a2d09772b0"
    else
      url "https://static.ampcode.com/cli/0.0.1775765597-ga4f47d/amp-linux-x64"
      sha256 "642931e47e23ef99ab28754bfd76014a2d0d8ce4cb438ee4f4f90834ce96cb0a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
