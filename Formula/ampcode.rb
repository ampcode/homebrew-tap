class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787844794-g9bf6ac"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787844794-g9bf6ac/amp-darwin-arm64"
      sha256 "3a3f61b352823118b5ffae2ffdda38b1d9e41bb10d6dea7f7b53b8821c5c8a50"
    else
      url "https://static.ampcode.com/cli/0.0.1787844794-g9bf6ac/amp-darwin-x64"
      sha256 "bb33dfb67c88521b902a442d9994b71645f6168446a0bd49a0e8ec737f42c469"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787844794-g9bf6ac/amp-linux-arm64"
      sha256 "a04c4463aa73f77af924a7077bfc3cd3c4ee1fd777e12588a1af25833f4033d2"
    else
      url "https://static.ampcode.com/cli/0.0.1787844794-g9bf6ac/amp-linux-x64"
      sha256 "f7e98b202ac74a0ff272d6a5e4227bd552e5de6fdb71d822271d530a76e25c5a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
