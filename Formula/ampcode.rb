class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793088058-g3db9cf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793088058-g3db9cf/amp-darwin-arm64"
      sha256 "850eddcda20c96f9945e8534f4ca5756aa655aedd0071bda9cb4a34be8db687b"
    else
      url "https://static.ampcode.com/cli/0.0.1793088058-g3db9cf/amp-darwin-x64"
      sha256 "f6b32a689b5b6b822e7866d27a868bfd091ab650260585757dde9ce4c01fd43d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793088058-g3db9cf/amp-linux-arm64"
      sha256 "2dff8b303fc19ca675a5f6cd89ed1769bf988566dfbfe21b4f17a0badbcd4f21"
    else
      url "https://static.ampcode.com/cli/0.0.1793088058-g3db9cf/amp-linux-x64"
      sha256 "1812489f7ebfc416d8f5a43bea58fdf17cb1eb6f77a598e666634f390de86118"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
