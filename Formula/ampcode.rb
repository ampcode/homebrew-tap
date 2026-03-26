class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774512763-gf7364e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774512763-gf7364e/amp-darwin-arm64"
      sha256 "fcec816b26b68b9b45ddd7b6cd645ea3e28c6129e46c9cbeebc8b03c1ea80f82"
    else
      url "https://static.ampcode.com/cli/0.0.1774512763-gf7364e/amp-darwin-x64"
      sha256 "1f01718b3d3ec5a8b9b49f3992972ed20bab1a46deb4c9f0316fd79091ea3407"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774512763-gf7364e/amp-linux-arm64"
      sha256 "70db00103d40f8589f7ecd8e5ad81c755d39422b63387f7ca48f9aa621299138"
    else
      url "https://static.ampcode.com/cli/0.0.1774512763-gf7364e/amp-linux-x64"
      sha256 "a057f9d1b1e47dade4e3ac1b0337f37ebd9c9a738e6e921254c178c2e554e0a9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
