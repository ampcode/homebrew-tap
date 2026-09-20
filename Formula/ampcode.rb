class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789862504-g88e99e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789862504-g88e99e/amp-darwin-arm64"
      sha256 "da2ef74d9a2462a102e200d0d9e36c103751c3ab6185e037e9b4ca3b2803c5ec"
    else
      url "https://static.ampcode.com/cli/0.0.1789862504-g88e99e/amp-darwin-x64"
      sha256 "e97306797a3fa23100641d054b3313f0b4ae38183cde8fc23b00b12cb0298ff0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789862504-g88e99e/amp-linux-arm64"
      sha256 "3d04ccd3eb7c1a431b2c83ae7830be76bb3de36671cdc11ceb0ef8702839860b"
    else
      url "https://static.ampcode.com/cli/0.0.1789862504-g88e99e/amp-linux-x64"
      sha256 "1eab2132a57f5d42d09e4ee24ac1eaac4ec201a505d58b32c0e5f7331cc74175"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
