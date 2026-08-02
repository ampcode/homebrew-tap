class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785687550-g686ee1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785687550-g686ee1/amp-darwin-arm64"
      sha256 "c18a76a65bfc6770d41ff19a35841cfcc73ec8d42835d40f5dc90a6bd29938a6"
    else
      url "https://static.ampcode.com/cli/0.0.1785687550-g686ee1/amp-darwin-x64"
      sha256 "f78bac6f6b5c0db1200abf595e1df68a72b6bd4a35319f2dc6fb2623534107da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785687550-g686ee1/amp-linux-arm64"
      sha256 "133c2fe1f800057b6cf8dfa47ba4dfb72c70c83728ae3cb7b6da43cd9e4caf93"
    else
      url "https://static.ampcode.com/cli/0.0.1785687550-g686ee1/amp-linux-x64"
      sha256 "39c1b2b4e8821a4a94f95c159e37f5bf295a7655b47ef4d975520f629a1f01d7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
