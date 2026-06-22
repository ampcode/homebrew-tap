class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782120553-g64087b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782120553-g64087b/amp-darwin-arm64"
      sha256 "3fea65e373f9515de509ac4f0791947b49a1969d9aecae122bbdfbd77b359110"
    else
      url "https://static.ampcode.com/cli/0.0.1782120553-g64087b/amp-darwin-x64"
      sha256 "36621774499f883516e06ddf0201e6eaaa6b53354c307a1aef503b5911e3b6c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782120553-g64087b/amp-linux-arm64"
      sha256 "7767f3c92eb4fb1b054792d498f1c6e31235855fdb6e948425c55695cbd8885c"
    else
      url "https://static.ampcode.com/cli/0.0.1782120553-g64087b/amp-linux-x64"
      sha256 "5d911d117b629259ebf0ae53d13ec68d6831efb5cb9767849112bb36df0bd8f5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
