class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787045288-gbe9904"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787045288-gbe9904/amp-darwin-arm64"
      sha256 "bda4a0f0a00bff5cdd3d21857201a769629358b2e963030f89a5a3bddfc77b48"
    else
      url "https://static.ampcode.com/cli/0.0.1787045288-gbe9904/amp-darwin-x64"
      sha256 "fdefa78ef4c93563325fabdd38925313ad39e56cd4637489fe62c37066b6842b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787045288-gbe9904/amp-linux-arm64"
      sha256 "ac29ee2afc8d9726d2333784dcd538eac9a3cb1a9ff4faedcb51beea60262dfa"
    else
      url "https://static.ampcode.com/cli/0.0.1787045288-gbe9904/amp-linux-x64"
      sha256 "84aaa8e52f0847dbe27b4d7a394d8a9e0d057c1e4caef5c94745cf474d83f71e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
