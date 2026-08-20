class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787256233-gf9b5cc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787256233-gf9b5cc/amp-darwin-arm64"
      sha256 "c0306d4c3b07274cc45869e295c3628dfd70c955c9cd8ef4c9ffc8ff750a0df2"
    else
      url "https://static.ampcode.com/cli/0.0.1787256233-gf9b5cc/amp-darwin-x64"
      sha256 "5122cd961b84ded6cf396c2a71014dc1e626d0551a148c825d386ec2251a5c5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787256233-gf9b5cc/amp-linux-arm64"
      sha256 "58ab04af6e8415256aa2eb1585dd6395b41bc77bfce894d6e53ca8e683839778"
    else
      url "https://static.ampcode.com/cli/0.0.1787256233-gf9b5cc/amp-linux-x64"
      sha256 "f4fcb9b9c88cf578f6e113b9c0d5efefb57f1846d465058462cc06920603f0d0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
