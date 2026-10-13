class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791914780-gdfd130"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791914780-gdfd130/amp-darwin-arm64"
      sha256 "31548af9853ac870d3e6c327beeae9a62f50393d2222eb8793542bc85f03ecff"
    else
      url "https://static.ampcode.com/cli/0.0.1791914780-gdfd130/amp-darwin-x64"
      sha256 "9dae5a61a211f4f77ce063ac807efd9b9cb82a283687a1ce3aefdc09101bd663"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791914780-gdfd130/amp-linux-arm64"
      sha256 "56125272217c147a368a126ed4ce55a45a27b9b0ed06c264805b9e742179aaac"
    else
      url "https://static.ampcode.com/cli/0.0.1791914780-gdfd130/amp-linux-x64"
      sha256 "03f4c18c785e8f38dbcec45d54de48b409403d0debb436cde19aeb7d962cc65a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
