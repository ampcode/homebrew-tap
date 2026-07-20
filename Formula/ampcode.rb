class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784564899-gf2d910"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784564899-gf2d910/amp-darwin-arm64"
      sha256 "74187b63f234d3084423c4e1b08c53e0354afd8c373cc68d9cae11f3f3d4ef99"
    else
      url "https://static.ampcode.com/cli/0.0.1784564899-gf2d910/amp-darwin-x64"
      sha256 "150563abda8584f531725f154672f43d76b78f5293d869d8b8af5bbf415a036f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784564899-gf2d910/amp-linux-arm64"
      sha256 "6f267d6cb3f587c70e2ac9d48c7c1de3e18dc20f2d3e84ee28e7e1032d3b3798"
    else
      url "https://static.ampcode.com/cli/0.0.1784564899-gf2d910/amp-linux-x64"
      sha256 "b1726b87bae322cb5a9173f34592b96d05e1f9c8c0749f2023b7b7607f71a1f2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
