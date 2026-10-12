class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791792883-gf1ab8d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791792883-gf1ab8d/amp-darwin-arm64"
      sha256 "485103a6827f4ffeeb63c7684a2c1a1688710c934c7e83b71e670baa3532733b"
    else
      url "https://static.ampcode.com/cli/0.0.1791792883-gf1ab8d/amp-darwin-x64"
      sha256 "d114235b2fee86c5569a622ef94502bd8bd530b0d86c8d69853b518d94c2ff34"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791792883-gf1ab8d/amp-linux-arm64"
      sha256 "5ec68222c787522a45bc8ec2e245c2fd74332a34cee2816092ab15a5b5face84"
    else
      url "https://static.ampcode.com/cli/0.0.1791792883-gf1ab8d/amp-linux-x64"
      sha256 "ba9e4542d0a53c185d3e8a6f19074fde35b34647ea26c6ad468c6151c92fb2e8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
