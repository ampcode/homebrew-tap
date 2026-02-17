class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771315770-g75b756"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771315770-g75b756/amp-darwin-arm64"
      sha256 "cfb0e234ab14b34edc155ce7e435dea22aa7b3aa520beadcc319ad84828fc33b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771315770-g75b756/amp-darwin-x64"
      sha256 "a0e04ca83a282e6dfa52e172333cab886f996bf1e311137b87fcb2b706ccdd5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771315770-g75b756/amp-linux-arm64"
      sha256 "d1bcea5bccd39cf4ef107992e8b9b677f6f67cbef8e14d85b6de20c27a0e0c56"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771315770-g75b756/amp-linux-x64"
      sha256 "be9cffc1a8e6134fccb55813e58f7a96a9d45cf8110e9f67417eb8bd7f289027"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
