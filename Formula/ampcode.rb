class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795420841-gc84765"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795420841-gc84765/amp-darwin-arm64"
      sha256 "c295e18b6a99ab6ecbbf5c481be65f9aef480eb488e457e03c8be7bc34641380"
    else
      url "https://static.ampcode.com/cli/0.0.1795420841-gc84765/amp-darwin-x64"
      sha256 "1317598f96cf9bcbfcba445f98c8ec4a66c5c6bfd44553f70c28c6c891a3e97a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795420841-gc84765/amp-linux-arm64"
      sha256 "44ab7251853e19534574b89465cd8894d813b4a1843da5eb087d07ec0a4002ef"
    else
      url "https://static.ampcode.com/cli/0.0.1795420841-gc84765/amp-linux-x64"
      sha256 "7b3884f615a17f6a70acb347001aa51533e80edc20525b7a60a9c00236afb978"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
