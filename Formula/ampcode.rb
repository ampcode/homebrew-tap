class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792800065-ga5b55b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792800065-ga5b55b/amp-darwin-arm64"
      sha256 "c9aac480e79f5032658db9447eea63fa4ffe28936f5a56d8ac267c8f96c1dcbc"
    else
      url "https://static.ampcode.com/cli/0.0.1792800065-ga5b55b/amp-darwin-x64"
      sha256 "802358faf0ffdf860c665fc6d72d4df7488d232705bdfc08294b35cfe6ae9dbc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792800065-ga5b55b/amp-linux-arm64"
      sha256 "1566813003d2b22a5d0ab6a3c58070f1469bed716e6c441e4325c6f8bb9d87a9"
    else
      url "https://static.ampcode.com/cli/0.0.1792800065-ga5b55b/amp-linux-x64"
      sha256 "fd4f3da7d0d19c84d0ace829d2a146d3946843a941cc96c8632fd67cf8fcdf34"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
