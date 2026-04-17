class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776442618-g1706e0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776442618-g1706e0/amp-darwin-arm64"
      sha256 "d05843134bfd82756421a6cc72705d9c14a5b040601e8280fb90bab1a65452b9"
    else
      url "https://static.ampcode.com/cli/0.0.1776442618-g1706e0/amp-darwin-x64"
      sha256 "0a6fa0d4fd833b2e26ba88d9337dfbc8a770c57c7ba0be47fef2f260598c760f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776442618-g1706e0/amp-linux-arm64"
      sha256 "46a5e84302f0e459092982c40127c0d156d84faea246e2dac2abe17420c15b54"
    else
      url "https://static.ampcode.com/cli/0.0.1776442618-g1706e0/amp-linux-x64"
      sha256 "722a0e5d3a3b312d3dd2f961c2b33bab4cc3a81423e1e58958a8ba28f41846e8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
