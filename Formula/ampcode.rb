class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784751724-g9d1cfb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784751724-g9d1cfb/amp-darwin-arm64"
      sha256 "0c196ba7c3d4d1786de8f73921034726b8bc3489785392c4273343a8b438b21a"
    else
      url "https://static.ampcode.com/cli/0.0.1784751724-g9d1cfb/amp-darwin-x64"
      sha256 "53ca636d043b4059768ad87f88ac2230d4d1ad308848ad994924fe541747e83e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784751724-g9d1cfb/amp-linux-arm64"
      sha256 "2af77a636f9e2fd722ceb3405a9de1efd3729aff4f83d979bda98a7809566b9c"
    else
      url "https://static.ampcode.com/cli/0.0.1784751724-g9d1cfb/amp-linux-x64"
      sha256 "17b221d136cb0efc4593670953f80f13201c8c099eb53095b12e31f3ca572511"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
