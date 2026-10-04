class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791146283-g5c3f72"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791146283-g5c3f72/amp-darwin-arm64"
      sha256 "1fb28444e9a3e6e8634cd6be5c2cf7b715184786f41156ac8fb99f6031199df0"
    else
      url "https://static.ampcode.com/cli/0.0.1791146283-g5c3f72/amp-darwin-x64"
      sha256 "b32958bf5871e44f4a1c08b024e43b44d4242e40add4bf0ffdb983f99d437e65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791146283-g5c3f72/amp-linux-arm64"
      sha256 "f9dba6824176987edaf354e6d8aca192f1676f0614dc90fbf29cf67b8009a344"
    else
      url "https://static.ampcode.com/cli/0.0.1791146283-g5c3f72/amp-linux-x64"
      sha256 "f62bb5b17d10efbadd32552a0f5d41930da954f3724122ed6576d07c3f450314"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
