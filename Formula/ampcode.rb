class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788710452-g8171bf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788710452-g8171bf/amp-darwin-arm64"
      sha256 "8ddcd36477d6447845a2b5d3f2f0ec4fd60033b650eadf11fbe78b075111759d"
    else
      url "https://static.ampcode.com/cli/0.0.1788710452-g8171bf/amp-darwin-x64"
      sha256 "61f6a8f4b52da92194000538fabf70e999feaaedd7359152e17b55f069809533"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788710452-g8171bf/amp-linux-arm64"
      sha256 "f7a4aa8be35ea47a6809c1e3b8584dfea8e49a93932e50ae81357687e4ded9f0"
    else
      url "https://static.ampcode.com/cli/0.0.1788710452-g8171bf/amp-linux-x64"
      sha256 "b470733ccca84b72c4d628cc337a98ffcf93cef918ecc3b977643e5c631b6097"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
