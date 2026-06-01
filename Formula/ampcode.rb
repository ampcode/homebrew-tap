class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780306933-g944f6c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780306933-g944f6c/amp-darwin-arm64"
      sha256 "cd855de3efd0e3271fb02936097ec481315080f84a9473a67982f3391ac94e4d"
    else
      url "https://static.ampcode.com/cli/0.0.1780306933-g944f6c/amp-darwin-x64"
      sha256 "e98a6fb6114fd7b25d83a0e5ba24efed32e18c798a47717347cc751b67ea40b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780306933-g944f6c/amp-linux-arm64"
      sha256 "4194f8c64d7e7fc2989ed1cca9b7117c1539d55259482139bc74f2df9e7b8e5f"
    else
      url "https://static.ampcode.com/cli/0.0.1780306933-g944f6c/amp-linux-x64"
      sha256 "b1404efcaee8c4a163115d169193b93706a4db059c7749f8102c5a1afde5bab6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
