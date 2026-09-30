class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790765121-g17d77b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790765121-g17d77b/amp-darwin-arm64"
      sha256 "e98c81250fc7001d58caef47fb289a5eb1625cbe75b17dc3ae2628020da40d00"
    else
      url "https://static.ampcode.com/cli/0.0.1790765121-g17d77b/amp-darwin-x64"
      sha256 "2cb3dd7162cbac3560bbc31aef71a7b7e2423fd792c1346e36decf5b525e9b2a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790765121-g17d77b/amp-linux-arm64"
      sha256 "b281a80eb8261c4aff44235ce27730b4ec23ece60b75c114d2f9e5436db00126"
    else
      url "https://static.ampcode.com/cli/0.0.1790765121-g17d77b/amp-linux-x64"
      sha256 "06ad5fc4271b9b65e0bc948e721f90663a36c5950e05475ff129141ac7258d1b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
