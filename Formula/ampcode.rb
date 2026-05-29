class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780078165-g0febee"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780078165-g0febee/amp-darwin-arm64"
      sha256 "ed28c337c7f3622f6a65c8dc301933fd0b09b0ac6570d530abe6e9aea4ac2b25"
    else
      url "https://static.ampcode.com/cli/0.0.1780078165-g0febee/amp-darwin-x64"
      sha256 "8fa4a23e6e088b2508071e679677d91225b7cee577c0c566f314700283c71809"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780078165-g0febee/amp-linux-arm64"
      sha256 "e8d3bade81bb95331533abbd0dbcc5ad897a286225b39561da990e51a79deb4b"
    else
      url "https://static.ampcode.com/cli/0.0.1780078165-g0febee/amp-linux-x64"
      sha256 "5879547dd7f9c7a48cd1223a11ce9c211c4240a69e894f29f2b804c11bd760db"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
