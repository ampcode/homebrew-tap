class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794216625-gf4bfeb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794216625-gf4bfeb/amp-darwin-arm64"
      sha256 "e7a2d996e9ed7425ce2eb846ac73b983dba73eea9d4280260617a22725ad2863"
    else
      url "https://static.ampcode.com/cli/0.0.1794216625-gf4bfeb/amp-darwin-x64"
      sha256 "17bdf4f5a13a3757f220bfef2731e6219e5472e2f8c017c0f25661d0689a1c47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794216625-gf4bfeb/amp-linux-arm64"
      sha256 "845fc0a0a4404acde8c3a43290e588624b9a8ee5302b7f08fe70046c86117937"
    else
      url "https://static.ampcode.com/cli/0.0.1794216625-gf4bfeb/amp-linux-x64"
      sha256 "c32032289a7c0138b22904e57f5a7230a303fa1a718454396d884b7b2dd07a6d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
