class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794096074-g996537"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794096074-g996537/amp-darwin-arm64"
      sha256 "09e2112efd906a45b73f57c1e83dbaf306513baca90f66828a9c50d2f175004f"
    else
      url "https://static.ampcode.com/cli/0.0.1794096074-g996537/amp-darwin-x64"
      sha256 "3481e146a5ca39a4ce8007252e452c567c7fe150299cd5238d6d101fca2c6d16"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794096074-g996537/amp-linux-arm64"
      sha256 "9cada7800d4e651a516c4cc63ed112dc48fc175fa7c40019c2d73007108a8424"
    else
      url "https://static.ampcode.com/cli/0.0.1794096074-g996537/amp-linux-x64"
      sha256 "173bad1341da48113dca5066d9c15b748089bf950da73dc560da0cfb18b08e11"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
