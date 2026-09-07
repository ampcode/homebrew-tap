class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788811227-gce258b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788811227-gce258b/amp-darwin-arm64"
      sha256 "f2ee471a71c5f555d30674dcc0db18deccd770a674eaf39b2de1049ff0d99002"
    else
      url "https://static.ampcode.com/cli/0.0.1788811227-gce258b/amp-darwin-x64"
      sha256 "167734a50ca4e0ba5f818e8361ac1cd14150ad3d140a079f1d6a37fb11df5d70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788811227-gce258b/amp-linux-arm64"
      sha256 "07b632c3ebfe2472c9d56738e794ed061301eede8975a8a4389d086317e24c64"
    else
      url "https://static.ampcode.com/cli/0.0.1788811227-gce258b/amp-linux-x64"
      sha256 "06461c3bc3ac4931054645a6bdf4e04d689a9a374ccb4ac83bab1eda1277d5fc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
