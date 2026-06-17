class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781693278-g7ee631"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781693278-g7ee631/amp-darwin-arm64"
      sha256 "a3ed6dad8e58364bac2a68aa2eddbe315ebebc2a3ca7982199dc0e274e502893"
    else
      url "https://static.ampcode.com/cli/0.0.1781693278-g7ee631/amp-darwin-x64"
      sha256 "7888382ec0fd5bc281a831e569bc4a11c8da4b1617b22f2868f41f9eb9515b5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781693278-g7ee631/amp-linux-arm64"
      sha256 "c83d748332f6f5685cfa5d8a0b6630a6c6fb8a9d924de5dbdb551f2d371ad98b"
    else
      url "https://static.ampcode.com/cli/0.0.1781693278-g7ee631/amp-linux-x64"
      sha256 "76c1fd1bab20d4034a8a192ac32e0d428e53ce7fc29187fa61936814050f65fe"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
