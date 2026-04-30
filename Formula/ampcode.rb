class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777508107-g03bdb0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777508107-g03bdb0/amp-darwin-arm64"
      sha256 "e56e4b5f2666ad4aa154915eb111ec5622cfb4e5b58ea07cc3bac48a2b53ab36"
    else
      url "https://static.ampcode.com/cli/0.0.1777508107-g03bdb0/amp-darwin-x64"
      sha256 "5192fdc7a27362dc701d0dbb5db3d44a5f555ad2562a96c388f2624ccac840fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777508107-g03bdb0/amp-linux-arm64"
      sha256 "d786d0f8d58d90c4dc55a58e1f5c3e8d8726690cb55df60fb5a97197c9937ab6"
    else
      url "https://static.ampcode.com/cli/0.0.1777508107-g03bdb0/amp-linux-x64"
      sha256 "6a8e488d5f1d8c4f861008f37d3747e32a3c5abee2dbcd2d2465a36a6eada513"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
