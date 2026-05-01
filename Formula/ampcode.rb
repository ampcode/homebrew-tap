class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777637585-gd5aed6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777637585-gd5aed6/amp-darwin-arm64"
      sha256 "4303c45438a839d605007e792814a1c3632aabd32f280af73b1f76753f58f1b4"
    else
      url "https://static.ampcode.com/cli/0.0.1777637585-gd5aed6/amp-darwin-x64"
      sha256 "ac24b67d4894a84f47f9134783c63d570bcab0e827515c030c4f95e9c67f740f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777637585-gd5aed6/amp-linux-arm64"
      sha256 "c88d4d3dd3e287835c437787f84d432c1e6c1c47e53cf279c19f92648ffbcf51"
    else
      url "https://static.ampcode.com/cli/0.0.1777637585-gd5aed6/amp-linux-x64"
      sha256 "32fbb350ab4aa8a923a3e2be965b4a40e383c8b6b5f0dea939cd22d4fd8bcb58"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
