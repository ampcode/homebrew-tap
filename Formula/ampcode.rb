class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774785816-gd71a30"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774785816-gd71a30/amp-darwin-arm64"
      sha256 "80493d3f877ac74759b1694ed630ac4f9fd8bf1a290fc88a11fc3b7e672379ef"
    else
      url "https://static.ampcode.com/cli/0.0.1774785816-gd71a30/amp-darwin-x64"
      sha256 "45ae6aa445286087cd5e3b1ff25879a9a31718538f71955741afacc36730be3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774785816-gd71a30/amp-linux-arm64"
      sha256 "95fe1b16456aae01f6a488d7c8e6bcaf33fcffb1c83d0795849b714bc01225e1"
    else
      url "https://static.ampcode.com/cli/0.0.1774785816-gd71a30/amp-linux-x64"
      sha256 "e33572592b0283456514a8425542fa06536025693a02ff4867670c4c32e797af"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
