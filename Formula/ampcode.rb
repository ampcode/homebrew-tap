class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787544825-g101be1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787544825-g101be1/amp-darwin-arm64"
      sha256 "0474019b5c961bdccfdce049bd5dda6fdf17e715772af1b204f637b09f1dcb98"
    else
      url "https://static.ampcode.com/cli/0.0.1787544825-g101be1/amp-darwin-x64"
      sha256 "07b43101bb2993cfce2b0af521b66f17c18689cb3b6455706bb3aefbb38e8f65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787544825-g101be1/amp-linux-arm64"
      sha256 "3975d693dc563cda190267743a8ef486bf242e34f075973e132b061e3e9ab08b"
    else
      url "https://static.ampcode.com/cli/0.0.1787544825-g101be1/amp-linux-x64"
      sha256 "82795d69e7a1f5e80aeda57654b56882de412a1fdce40c5ec8d2668373d5c744"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
