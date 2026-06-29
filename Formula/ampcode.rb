class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782756099-g08577d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782756099-g08577d/amp-darwin-arm64"
      sha256 "4821a8bc4199c9360c611d7979f45f98b0629d66aced2714435b5f06266e28dd"
    else
      url "https://static.ampcode.com/cli/0.0.1782756099-g08577d/amp-darwin-x64"
      sha256 "03c0ffc73acaf868fb3d626bef65072a15369306c86f846d383744c14b467333"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782756099-g08577d/amp-linux-arm64"
      sha256 "2c21f9af83d683b684eef62d67f39b57c07ffe6326465b0e961e8afc41fc0f00"
    else
      url "https://static.ampcode.com/cli/0.0.1782756099-g08577d/amp-linux-x64"
      sha256 "1e04152ef16fed9636736d2648a16615bf211f2570cd55cd38352b08bbbef887"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
