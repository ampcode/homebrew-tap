class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778732631-gc5875c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778732631-gc5875c/amp-darwin-arm64"
      sha256 "b28ce4dc4e33b999f4399282e731a317a24350a225ebc369258c92cc957273aa"
    else
      url "https://static.ampcode.com/cli/0.0.1778732631-gc5875c/amp-darwin-x64"
      sha256 "d7e263cc4782132c28a02d15fcc684313ff76f7a7ddba858c5df47a787029c80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778732631-gc5875c/amp-linux-arm64"
      sha256 "0ed5c3fd4de3db9179765c80f88ed60170cd609e0681013367c4f275b36fa263"
    else
      url "https://static.ampcode.com/cli/0.0.1778732631-gc5875c/amp-linux-x64"
      sha256 "0a03893e732c41d4edfa486019c5248c9323ceec1945dc3e66572f63dc61ec37"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
