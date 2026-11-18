class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794988850-ga93e1f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794988850-ga93e1f/amp-darwin-arm64"
      sha256 "7c789237fefbd6acb3034bf26d72fc90c05e80f5698ec015d465a740498119c8"
    else
      url "https://static.ampcode.com/cli/0.0.1794988850-ga93e1f/amp-darwin-x64"
      sha256 "f436855d8f7ea64e08b0f0bdeb94749362a8dff18f4a56701e629e9afb7d1b20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794988850-ga93e1f/amp-linux-arm64"
      sha256 "404fb8162b5e16e370e40984c58ad96dcf2360e129df6e840904ced611a44064"
    else
      url "https://static.ampcode.com/cli/0.0.1794988850-ga93e1f/amp-linux-x64"
      sha256 "f217301c12dd3a888202dd658006e74109c764bae13086baab050144901d11ed"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
