class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786666234-gf5184d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786666234-gf5184d/amp-darwin-arm64"
      sha256 "8528c8faddcc0ecf60c5c90264e6d430763683a9660b8ce5313e9057347bc5a5"
    else
      url "https://static.ampcode.com/cli/0.0.1786666234-gf5184d/amp-darwin-x64"
      sha256 "ec970a620af329a00b563dd7ffd1b75095d9a7a9c4f09d1c8125b9966ce7acbf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786666234-gf5184d/amp-linux-arm64"
      sha256 "09e2122b16787dda74a71f965bad031459ddb223fec95d930422da042f803605"
    else
      url "https://static.ampcode.com/cli/0.0.1786666234-gf5184d/amp-linux-x64"
      sha256 "2dd4b0878c7a075a101ca5aac2b993263a0e1635d035981ae2b7124588775792"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
