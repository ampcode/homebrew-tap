class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784630472-g1eca1d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784630472-g1eca1d/amp-darwin-arm64"
      sha256 "cde8c96bd20d0566391783817802fa49c08e29e249a93a32280cdaa944a37a73"
    else
      url "https://static.ampcode.com/cli/0.0.1784630472-g1eca1d/amp-darwin-x64"
      sha256 "99c29d090e77fd0f85f9186de57438422e9cfd746039fef16adcd45da95d5f01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784630472-g1eca1d/amp-linux-arm64"
      sha256 "87a17f323d7e6769e1d1fda45051cbaefbbcbf31364b42b86b1f9a3aae8e7ef3"
    else
      url "https://static.ampcode.com/cli/0.0.1784630472-g1eca1d/amp-linux-x64"
      sha256 "9b919971efe882ed1894bf39547b0c47f639132f4900eb183a8b474dc13dbea1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
