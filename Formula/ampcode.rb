class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787858880-ga90ead"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787858880-ga90ead/amp-darwin-arm64"
      sha256 "8b8a885c3a4b64c0a7af03109adab5ca08c6006ca382cd440afb4487c98d5bbe"
    else
      url "https://static.ampcode.com/cli/0.0.1787858880-ga90ead/amp-darwin-x64"
      sha256 "9d1469f2f110b44741357ef50572d31026b76fb6b3cd5aa01101e4088a93553d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787858880-ga90ead/amp-linux-arm64"
      sha256 "cef3f09468eaabea952dd3540efb23cfecf36dcd01d491d373e115fb8b8957d1"
    else
      url "https://static.ampcode.com/cli/0.0.1787858880-ga90ead/amp-linux-x64"
      sha256 "32739e377547d35e163d39b79e90986e18fb0a5c87f72df34d0956438e836c8b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
