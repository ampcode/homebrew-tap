class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791907253-g874296"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791907253-g874296/amp-darwin-arm64"
      sha256 "a7432ee0e92fac00912731e99a0a4453a80c414dc75b27c6427adef343fd9097"
    else
      url "https://static.ampcode.com/cli/0.0.1791907253-g874296/amp-darwin-x64"
      sha256 "a7b8cec3146452b5647bd162f70d2cb5a07d2877855d4e654d62dd824e1e3988"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791907253-g874296/amp-linux-arm64"
      sha256 "28060d3532f998bf9e1be91d5390223568d89791fbbb4e22336794c7fa36a3e0"
    else
      url "https://static.ampcode.com/cli/0.0.1791907253-g874296/amp-linux-x64"
      sha256 "6f314fa3606df0f07adbe16fe37c726fc0d2954100fb78324b9152575050f90b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
