class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774808767-g670150"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774808767-g670150/amp-darwin-arm64"
      sha256 "4baa4217eabae9474dd7e1560d16b60b7ed27804be3b815b58360a1fe9c34735"
    else
      url "https://static.ampcode.com/cli/0.0.1774808767-g670150/amp-darwin-x64"
      sha256 "7e5a0c2110c27a8e9433da895deb030be85352696bf1c77356c39c3c7786023e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774808767-g670150/amp-linux-arm64"
      sha256 "601d23db50d597e5351b1c820a7c8305591f682eb8623db7b5d891b0dae79043"
    else
      url "https://static.ampcode.com/cli/0.0.1774808767-g670150/amp-linux-x64"
      sha256 "823234768c49bfe0423cc69db492fbbaa77852f2a6836fe0b57d993718790804"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
