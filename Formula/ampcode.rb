class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776687873-g9ea903"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776687873-g9ea903/amp-darwin-arm64"
      sha256 "04f98a06e4c3c25defbce7901fc3ce922f7d667d96e5fc40588ec9450c48946f"
    else
      url "https://static.ampcode.com/cli/0.0.1776687873-g9ea903/amp-darwin-x64"
      sha256 "5029a487bd7800c50cc04c55668937197ab143317427404456fc3616f64e0cff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776687873-g9ea903/amp-linux-arm64"
      sha256 "0fc278339de2f38a5e6b3d353d387abf9c6e137ed3d449c87d9f9d07bec3e70e"
    else
      url "https://static.ampcode.com/cli/0.0.1776687873-g9ea903/amp-linux-x64"
      sha256 "27c0ab801ce8b3317bd57e703c5ba8ad322e3cffaeb22976ee569022b97e0fe7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
