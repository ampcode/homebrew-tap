class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776802501-ged6024"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776802501-ged6024/amp-darwin-arm64"
      sha256 "7d37a55c575884b98b80ef21187c9e38cd96fa809d1bce93e2cfaa241903984d"
    else
      url "https://static.ampcode.com/cli/0.0.1776802501-ged6024/amp-darwin-x64"
      sha256 "f73867d1405aa900d414bb60f3994f8d7fdcc32a157ef805b0949dcd2af3d04c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776802501-ged6024/amp-linux-arm64"
      sha256 "6fbbfbd18ed3c0cf3d77eecc8916cd0289dbcda922d0215018517845f2555a35"
    else
      url "https://static.ampcode.com/cli/0.0.1776802501-ged6024/amp-linux-x64"
      sha256 "1ccf3dff60bb80d2871d3c2e50feef029573914a75665ef29203eaa97d5506d9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
