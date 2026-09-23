class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790142911-g7618fb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790142911-g7618fb/amp-darwin-arm64"
      sha256 "9de977bf5945bb63c6654c9fccd1b6b84a6e62bc82d5937042926e3d8f6678c1"
    else
      url "https://static.ampcode.com/cli/0.0.1790142911-g7618fb/amp-darwin-x64"
      sha256 "ea199d678c3f11ea676a07d32a3f3bef67aa6c8cb42567bd84c09b6fbbd81a75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790142911-g7618fb/amp-linux-arm64"
      sha256 "f641f22cc1ff61149d5162e83e2426a57ff1bad985c934b8fdf8126db47517a6"
    else
      url "https://static.ampcode.com/cli/0.0.1790142911-g7618fb/amp-linux-x64"
      sha256 "3b8a5fc578cc20d4adb7bd77effe09e2aae11d6761c3698b8e740388deb42542"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
