class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784160980-g752308"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784160980-g752308/amp-darwin-arm64"
      sha256 "4921288cb790dc17daf08b0ad9afee26afa962546c47b78f5ef76924c0351704"
    else
      url "https://static.ampcode.com/cli/0.0.1784160980-g752308/amp-darwin-x64"
      sha256 "ea61d3107bc447f5c87793f7e53ad69fcc50e45f8932b526557c957704d71f1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784160980-g752308/amp-linux-arm64"
      sha256 "e59d249d30b809e35630c35478d393725023df3a8d950850aab3204bc6889f0b"
    else
      url "https://static.ampcode.com/cli/0.0.1784160980-g752308/amp-linux-x64"
      sha256 "38a0b30f0eca01c647bd831bfbe6805b5c9e7bb0dc8e83885853d54ad2dc3beb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
