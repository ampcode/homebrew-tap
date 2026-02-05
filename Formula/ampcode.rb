class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770288815-gd19bd4"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770288815-gd19bd4/amp-darwin-arm64"
      sha256 "872bc9ec4d69e903982393500dd3d78016b3e050193ce7bdd225be5c6042724a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770288815-gd19bd4/amp-darwin-x64"
      sha256 "08d4d1af486f7760e60430ac2e5492a5c4076206c635a5ffe186601ab05a4ab5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770288815-gd19bd4/amp-linux-arm64"
      sha256 "f2c67a083d95fd8729ba08b49cdcab0d4b3d0646705206692a34391d03746246"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770288815-gd19bd4/amp-linux-x64"
      sha256 "bfb56d5746a12469741651973cdb4423dc1bf1868bb0194109520a3ef7cc3fd0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
