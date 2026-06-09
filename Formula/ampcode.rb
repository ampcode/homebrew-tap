class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781002158-gc05a61"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781002158-gc05a61/amp-darwin-arm64"
      sha256 "6a7deac235cce253ec69ca83441c12523344d0c28107efef61794e9fea3e88a5"
    else
      url "https://static.ampcode.com/cli/0.0.1781002158-gc05a61/amp-darwin-x64"
      sha256 "fe237a39b6c3826e9e82f95c7edcbda6e81bd79c23aab1da88705f46085d3547"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781002158-gc05a61/amp-linux-arm64"
      sha256 "616a5cc0f74ea8cddf94555fce86fc6f8ad3787424ad64f31875419948fe907d"
    else
      url "https://static.ampcode.com/cli/0.0.1781002158-gc05a61/amp-linux-x64"
      sha256 "c33e4fcb75842611dc075ba76fd742a6d6d11fd3166f8092e4dc352cb8add7e4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
