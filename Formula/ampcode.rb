class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776155316-g88c61d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776155316-g88c61d/amp-darwin-arm64"
      sha256 "a6e90c3d3e5cc842d689b37ab0cf8760f34e89a5011bb9338d98154356caa4cd"
    else
      url "https://static.ampcode.com/cli/0.0.1776155316-g88c61d/amp-darwin-x64"
      sha256 "f8fb68852f7cecbe40fb8fbfd5a8130227079846a4effd45ab8df3b65b269033"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776155316-g88c61d/amp-linux-arm64"
      sha256 "afa245352436b60a93e54ef17ce915e63648bd15aa0ba8f4210c20cb0156dc56"
    else
      url "https://static.ampcode.com/cli/0.0.1776155316-g88c61d/amp-linux-x64"
      sha256 "b9d61f99e99840ceffc65020b53b29fbc711c860fc14b18303647ce73e78251f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
