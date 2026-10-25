class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792915237-gd2be70"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792915237-gd2be70/amp-darwin-arm64"
      sha256 "5d2b36f1a47bf6ca3429e5c58fba0baeb470a3aa43946376a5fcc581bc7d9906"
    else
      url "https://static.ampcode.com/cli/0.0.1792915237-gd2be70/amp-darwin-x64"
      sha256 "5de93f4e7fbbcdd63444a4265985238eb9c299f500e483f9248f4f7347f83974"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792915237-gd2be70/amp-linux-arm64"
      sha256 "4cbb01821724565b906c5e4581d55ac2003caacb34169a44c3dc2da6a805544a"
    else
      url "https://static.ampcode.com/cli/0.0.1792915237-gd2be70/amp-linux-x64"
      sha256 "65f127ee77df533d557c88b049cd95882f8d91e50e43649962ea45c213ab9b61"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
