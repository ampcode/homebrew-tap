class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789885661-ge513b4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789885661-ge513b4/amp-darwin-arm64"
      sha256 "578e396b42f72c8b710253cfad87fb4bda9b4bcb7f9a4831de946518536962b9"
    else
      url "https://static.ampcode.com/cli/0.0.1789885661-ge513b4/amp-darwin-x64"
      sha256 "4b336e167f4d58864e56633e0f14ea4c1e067ac4fdc42cdcf85bf276edff9c52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789885661-ge513b4/amp-linux-arm64"
      sha256 "f9bb1083697243f4b86e45770f67ece46bdacdad69e6f9a849df0088b9cd58b4"
    else
      url "https://static.ampcode.com/cli/0.0.1789885661-ge513b4/amp-linux-x64"
      sha256 "48dc50bfac86fe5ecc09b200ed9362761f7c57763c4723f5baa18fde2851fb5d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
