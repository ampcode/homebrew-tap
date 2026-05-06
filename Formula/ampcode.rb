class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778058314-g6aa2c3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778058314-g6aa2c3/amp-darwin-arm64"
      sha256 "496595bee4bace449312db75e7bb85299d911917794adfc9823153fb36c3fba5"
    else
      url "https://static.ampcode.com/cli/0.0.1778058314-g6aa2c3/amp-darwin-x64"
      sha256 "0f46688abab783f9315448d1f2173fc998e5c3f8417e4658d65ccceed31fb963"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778058314-g6aa2c3/amp-linux-arm64"
      sha256 "4f126a1fa156d9813e4dfdf24bb327dfa32a83ec5c813171c589e9329a5f0cd5"
    else
      url "https://static.ampcode.com/cli/0.0.1778058314-g6aa2c3/amp-linux-x64"
      sha256 "90714b5c456a70928430d966b9cc1262c97efb53b1882f8b8407722f65f803bc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
